module Api::V1::CreditScoreHelper
            #Get the total number of parameters in the User profile
            params_count = User.column_names


            #Get the total number of parameters and returns score
            # if all paramters are filled



            def completed_score
                        num_of_null = 0
                        params_count.each do |key|
                                    if @current_user[key] != nil
                                        num_null  +=1
                                    end
                        end

                        num_null/params_count * BioScoreWeight.completed

            end


            def bio_verified_score
                num_null =0
                if BioScoreWeight.verified.nil?
                    num_null =1
                end
                    num_null
            end


            def bio_data_score
                completed_score() + bio_verified_score()
            end
end
