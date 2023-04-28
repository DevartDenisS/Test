CREATE TABLE [dbo].[EMP] (
  [EMPNO] [int] NOT NULL,
  [ENAME] [varchar](20) NULL,
  [JOB] [varchar](20) NULL,
  [MGR] [int] NULL,
  [HIREDATE] [date] NULL,
  [SAL] [money] NULL,
  [COMM] [money] NULL,
  [DEPTNO] [int] NULL,
  PRIMARY KEY CLUSTERED ([EMPNO])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[EMP]
  ADD FOREIGN KEY ([DEPTNO]) REFERENCES [dbo].[DEPT] ([DEPTNO])
GO