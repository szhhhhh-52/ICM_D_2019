function dmin = minDis2Exit(x,y,z,exit,stairs)
[W,L] = size(exit);
[w,l] = size(stairs);
flag = 0;
for i = 1:W
    if z == exit(i,3)
        flag = 1;
        break;
    end
end

dmin = 99999999;

if flag == 1
    for i = 1:W
        if z == exit(i,3)
            temp = sqrt((x-exit(i,1))^2+(y-exit(i,2))^2);
            if temp < dmin
                dmin = temp;
            end
        end
    end
else
    for i = 1:w
        if z == stairs(i,3)
            temp = sqrt((x-stairs(i,1))^2+(y-stairs(i,2))^2);
            if temp < dmin
                dmin = temp;
            end
        end
    end
end
