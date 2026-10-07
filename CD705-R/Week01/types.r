t <- function(x){typeof(x)}

t(5)
t(2.718)
t(2L)
t(2/3)
2/3

1/0
(1/0) + (1/0)
(1/0) * 0
sqrt(-1)
as.integer(sqrt(-1))
as.double(sqrt(-1))
as.integer(1/0)

sqrt(4+0i)
sqrt(-1+0i)

as.character(0+1i)

"2" + "3"

Sys.Date()
Sys.Date() - as.Date("2026-01-01")

d <- Sys.Date() - as.Date("2026-01-01")
as.integer(d)

today <- Sys.Date()
weekdays(today)
yesterday <- today - 1
weekdays(yesterday)
tomorrow <- today + 1
weekdays(tomorrow)
