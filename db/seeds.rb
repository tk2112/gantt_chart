require 'securerandom'

# Productのテストデータ生成
20.times do |n|
    control_no = 22000000 + SecureRandom.random_number(10**4) # 被らない用心でSecureRandomを使用

    case n
        when 0..10
            machine_code = "SQ-800"
            machine_name = "自動梱包機 SQ-800"
        when 11..16
            machine_code = "JK-5000"
            machine_name = "自動梱包機 JK-5000"
        when 17..18
            machine_code = "RQ-8YV59"
            machine_name = "自動梱包機 RQ-8YV59"
        else
            machine_code = "RQ-8YRS"
            machine_name = "環状物結束機 RQ-8YRS"
    end

    Product.create!(control_no:  control_no,
                machine_code: machine_code,
                machine_name:              machine_name)
end