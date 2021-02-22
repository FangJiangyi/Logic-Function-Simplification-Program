function Matrix=QuChong(Matrix)
    [m,~]=size(Matrix);
    for i=1:m
        j=2;
        if Matrix{i,1}<=2
            continue
        else
            while j<=Matrix{i,1}-1
                k=j+1;
                if isempty(Matrix{i,j})
                   continue;
                else
                    while k<=Matrix{i,1}
                       if Matrix{i,j}==Matrix{i,k}
                            if k+1<=Matrix{i,1}
                              for t=k+1:Matrix{i,1}
                                  Matrix(i,t-1)=Matrix(i,t);
                              end
                              Matrix{i,t}=[];
                              Matrix{i,1}=Matrix{i,1}-1;
                            elseif k==Matrix{i,1}
                                Matrix{i,k}=[];
                                k=k+1;
                                Matrix{i,1}=Matrix{i,1}-1;
                            end
                        else
                            k=k+1;
                        end

                    end
                end
                j=j+1;
            end
        end
    end
    if isempty(i)
        return 
    end
    temp=max(cell2mat(Matrix(:,1)));
    [~,n]=size(Matrix);
    Matrix(:,(temp+1):n)=[];
end