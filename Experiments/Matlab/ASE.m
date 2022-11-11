function Z=ASE(Adj,d,Lap)

if nargin<2
    d=3;
end
if nargin<3
    Lap=false;
end

if Lap
    D=mean(X,3);
    D=max(sum(D,1),1).^(0.5);
    for j=1:n
        Adj(:,j)=Adj(:,j)/D(j)./D';
    end
end
[~,S,V]=svds(Adj,d);
Z=V(:,1:d)*S(1:d,1:d)^0.5;