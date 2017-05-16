model MassSpringDampersScenario
  MassSpringDamper1 msd1;
  MassSpringDamper2 msd2;
  output Real x1;
  output Real v1;
  output Real x2;
  output Real v2;
  output Real fk;
equation
  msd1.fk = msd2.fk;
  msd2.x1 = msd1.x1;
  msd2.v1 = msd1.v1;
  x1 = msd1.x1;
  v1 = msd1.v1;
  x2 = msd2.x2;
  v2 = msd2.v2;
  fk = msd2.fk;
  annotation(experiment(StartTime = 0, StopTime = 10, Tolerance = 0.001, Interval = 0.02));
end MassSpringDampersScenario;
