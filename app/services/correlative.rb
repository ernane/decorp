class Correlative
  class << self
    attr_reader :application, :operation

    def tab_param(application, operation)
      @application = application
      @operation = operation
    end

    def number(app, oper)
      tab_param(app, oper)
      @number = correlative
    end

    private

    def correlative
      begin
        if length(transaction) > sequence_size
          raise Exception.new("Tamanho de Sequencial Maior que #{sequence_size}")
        else
          @correlative = "#{application_formatted}#{year}#{operation_formatted}#{sequence_formatted}"
        end
      rescue => exception
        puts "Error ao executar 'correlative' (#{exception.class}), tente novament."
      end
    end

    def transaction
      if record.nil?
        @sequence = 1
        TabParam.create!(application: @application, year: year, operation: @operation, number: @sequence)
      else
        @sequence = record.number + 1
        record.update_attribute(:number, @sequence)
      end
      @sequence = @sequence
    end

    def record
      @record = TabParam.where("application = ? AND year = ? AND operation = ? ", @application, year, @operation).first
    end

    def year
      @year = Time.new.year
    end

    def sequence_size
      @sequence_size = 7
    end

    def length(number)
      @length = Math.log10(number) + 1
    end

    def application_formatted
      @application_formatted = @application.to_s.rjust(2, '0')
    end

    def operation_formatted
      @operation_formatted = @operation.to_s.rjust(2, '0')
    end

    def sequence_formatted
      @sequence_formatted = @sequence.to_s.rjust(sequence_size,'0')
    end
  end
end
