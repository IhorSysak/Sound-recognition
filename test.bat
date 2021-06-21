@ECHO OFF
Setlocal EnableDelayedExpansion

CD D:\data\zero
SET /A i = 0

for %%f in (*) do (
  SET /a mod = !i! %% 15
  IF !mod! EQU 0 COPY /-y %%f D:\data\other
  SET /A i += 1
)