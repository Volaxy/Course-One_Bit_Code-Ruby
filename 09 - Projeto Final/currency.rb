class Currency
    def initialize(base_currency = "BRL", amount = 1, target_currency = "USD")
        @base_currency = base_currency.upcase
        @amount = amount
        @target_currency = target_currency.upcase
    end

    def total_amount
        data = get_data

        other_currencies = Hash.new
        data["conversion_rates"].each do |key, value|
            other_currencies[:"#{key}"] = value
        end

        total = @amount * other_currencies[:"#{@target_currency}"]
        puts "Total of money: #{total}!"

        save_in_a_file total
    end

    private
    def get_data
        https = Net::HTTP.new("v6.exchangerate-api.com", 443)
        https.use_ssl = true

        response = https.get("/v6/4f1ba660e45448e8be2563a8/latest/#{@base_currency}")
        data = JSON.parse(response.body)
    end

    private
    def save_in_a_file(total)
        puts "Saving in a file..."

        time = Time.now

        time_format = time.strftime("%d-%m-%y_%Hh-%Mm-%Ss")
        File.open("#{time_format}.txt", "w") do |line|
            line.puts("Base Currency: #{@base_currency}")
            line.puts("Target Currency: #{@target_currency}")
            line.puts("Amount: #{@amount}")
            line.puts("Total of conversion: #{total}")
        end
    end
end
