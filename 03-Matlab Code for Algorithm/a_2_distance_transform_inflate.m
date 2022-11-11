load house

dx_inflate = DXform(house, 'inflate',5) % inflating obstacles by 5 cells
dx.plan(place.kitchen);

p2 = dx.query(place.br3);
dx.plot(p2)
figure;
dx.plot(p,'inflated')
