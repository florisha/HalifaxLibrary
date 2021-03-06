USE [master]
GO
/****** Object:  Database [HalifaxLibrary]    Script Date: 2018-10-09 10:45:20 PM ******/
CREATE DATABASE [HalifaxLibrary]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HalifaxLibrary', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HalifaxLibrary.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HalifaxLibrary_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HalifaxLibrary_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HalifaxLibrary] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HalifaxLibrary].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HalifaxLibrary] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET ARITHABORT OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HalifaxLibrary] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HalifaxLibrary] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HalifaxLibrary] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HalifaxLibrary] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET RECOVERY FULL 
GO
ALTER DATABASE [HalifaxLibrary] SET  MULTI_USER 
GO
ALTER DATABASE [HalifaxLibrary] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HalifaxLibrary] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HalifaxLibrary] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HalifaxLibrary] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HalifaxLibrary] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HalifaxLibrary', N'ON'
GO
ALTER DATABASE [HalifaxLibrary] SET QUERY_STORE = OFF
GO
USE [HalifaxLibrary]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [HalifaxLibrary]
GO
/****** Object:  Table [dbo].[article_author]    Script Date: 2018-10-09 10:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[article_author](
	[auth_id] [int] NULL,
	[art_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[articles]    Script Date: 2018-10-09 10:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[articles](
	[_id] [int] NOT NULL,
	[title] [varchar](max) NULL,
	[pgno] [varchar](20) NULL,
	[mvid] [int] NULL,
 CONSTRAINT [PK__articles__DED88B1C36926DBD] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AUTHOR]    Script Date: 2018-10-09 10:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUTHOR](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[lname] [varchar](30) NOT NULL,
	[fname] [varchar](30) NULL,
	[email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contain]    Script Date: 2018-10-09 10:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contain](
	[mvid] [int] NOT NULL,
	[mid] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 2018-10-09 10:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](30) NULL,
	[lname] [varchar](30) NULL,
	[address] [varchar](60) NULL,
	[phonenumber] [varchar](16) NULL,
PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ITEM]    Script Date: 2018-10-09 10:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ITEM](
	[_id] [bigint] IDENTITY(1,1) NOT NULL,
	[price] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAGAZINE]    Script Date: 2018-10-09 10:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAGAZINE](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TD]    Script Date: 2018-10-09 10:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TD](
	[tid] [int] NOT NULL,
	[iid] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANS]    Script Date: 2018-10-09 10:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANS](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NOT NULL,
	[totalPrice] [float] NOT NULL,
	[tDate] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[volume]    Script Date: 2018-10-09 10:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[volume](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[vno] [int] NULL,
	[date] [numeric](4, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (1, N'On the Power of Chain Rules in Context Free Grammars.', N'425-433', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (2, N'Schnelle Multiplikation von Polynomen ber Krpern der Charakteristik 2.', N'395-398', 2)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (3, N'A characterization of rational D0L power series.', N'19-24', 3)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (4, N'The Derivation of Systolic Implementations of Programs.', N'595-632', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (5, N'Fifo Nets Without Order Deadlock.', N'15-36', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (6, N'On the Complementation Rule for Multivalued Dependencies in Database Relations.', N'297-305', 6)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (7, N'Equational weighted tree transformations.', N'29-52', 7)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (8, N'Relational Level Data Structures for Programming Languages', N'293-309', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (9, N'Merged processes: a new condensed representation of Petri net behaviour.', N'307-330', 9)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (10, N'Verifying a simplification of mutual exclusion by Lycklama-Hadzilacos.', N'199-228', 10)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (11, N'A Three-Stage Construction for Multiconnection Networks.', N'197-206', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (12, N'The Expressive Power of Delay Operators in SCCS.', N'447-452', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (13, N'Calculi for Interaction.', N'707-737', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (14, N'A Synthesis of Several Sorting Algorithms.', N'1-30', 14)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (15, N'A Workload Model Representative of Static and Dynamic Characteristics.', N'255-266', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (16, N'Gray visiting Motzkins.', N'793-811', 16)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (17, N'Trace- and failure-based semantics for responsiveness.', N'499-552', 17)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (18, N'Branching Processes in the Analysis of the Heights of Trees.', N'277-298', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (19, N'Least Upper Bound on the Cost of Optimum Binary Search Trees.', N'307-310', 18)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (20, N'Parallel Integer Sorting and Simulation Amongst CRCW Models.', N'607-619', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (21, N'Pattern Matching in Trees and Nets.', N'227-248', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (22, N'NP-complete Problems Simplified on Tree Schemas.', N'171-178', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (23, N'The Mathematical Analysis of the Computer System Modeled as a Two Stage Cyclic Queue.', N'187-209', 19)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (24, N'Invariants  Composition  and Substitution.', N'299-312', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (25, N'Maximum Entropy and the   G/G/1/N   Queue.', N'545-565', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (26, N'Abstraction and Performance in the Design of Parallel Programs: An Overview of the SAT Approach.', N'761-803', 21)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (27, N'A theory of structural stationarity in the  pi  -Calculus.', N'87-137', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (28, N'Evolutionary Systems: A Language Generating Device Inspired by Evolving Communities of Cells.', N'913-926', 21)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (29, N'On an Equivalence between Continuation and Stack Semantics.', N'113-123', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (30, N'Nonterminals Versus Homomorphisms in Defining Languages for Some Classes of Rewriting Systems.', N'265-283', 24)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (31, N'A Note on the Density of Inherently Ambiguous Context-free Languages.', N'295-298', 25)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (32, N'Time Lower Bounds for Parallel Sorting on a Mesh-Conected Processor Array.', N'643-655', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (33, N'Computational Algorithms for Networks of Queues with Rejection Blocking.', N'559-576', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (34, N'Compositional Refinements in Multiple Blackboard Systems.', N'415-458', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (35, N'Relational structures model of concurrency.', N'279-320', 27)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (36, N'On Removing the Machine from the Language.', N'229-243', 6)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (37, N'Automatic verification of concurrent systems using a formula-based compositional approach.', N'531-564', 16)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (38, N'Complete Problems for Space Bounded Subclasses of NP.', N'379-395', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (39, N'Efficient controller synthesis for a fragment of MTL 0 ^f8734; .', N'165-192', 17)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (40, N'Die mittlere Additionsdauer eines Paralleladdierwerks', N'283-291', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (41, N'Best Huffman Trees.', N'363-370', 29)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (42, N'Behandlung verschiedener INTEGER-Darstellungen durch optimierende Compiler.', N'45-56', 29)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (43, N'Hex ist PSPACE-vollstndig.', N'167-191', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (44, N'Special issue on Combining Compositionality and Concurrency: part 1.', N'3-4', 31)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (45, N'Two Notions of Correctness and Their Relation to Testing.', N'31-45', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (46, N'Implementing Daubechies Wavelet Transform with Weighted Finite Automata.', N'347-366', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (47, N'Functional Behavior in Data Spaces.', N'293-307', 34)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (48, N'Inductive Completion with Retracts.', N'497-514', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (49, N'Sometime = Always + Recursion = Always on the Equivalence of the Intermittent and Invariant Assertions Methods for Proving Inevitability Properties of Programs.', N'1-31', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (50, N'Complete Parameterized Families of Job Scheduling Strategies.', N'61-73', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (51, N'Modelling higher-order dual nondeterminacy.', N'441-465', 27)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (52, N'Dispatcher Primitives for the Construction of Operating System Kernels.', N'237-255', 35)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (53, N'A Note on Multihead Automata and Context-Sensitive Languages', N'249-252', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (54, N'On Efficient Entreeings.', N'203-213', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (55, N'A Recursive Second Order Initial Algebra Specification of Primitive Recursion.', N'329-340', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (56, N'Context-Free Graph Languages of Bounded Degree are Generated by Apex Graph Grammars.', N'341-378', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (57, N'Worst Case Performance of Weighted Buddy Systems.', N'555-564', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (58, N'Contextual Nets.', N'545-596', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (59, N'Applying relation algebra and Rel View to solve problems on orders and lattices.', N'211-236', 27)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (60, N'COSY - A System Specification Language Based on Paths and Processes.', N'109-158', 38)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (61, N'Eliminating Unit Productions from LR Parsers.', N'31-59', 39)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (62, N'Attribute (Re)evaluation in OPTRAN.', N'213-239', 40)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (63, N'On Parallel Integer Sorting.', N'1-15', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (64, N'Domain Independence and the Relational Calculus.', N'513-524', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (65, N'The Parsing Problem for Affix Grammars.', N'1-20', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (66, N'Persistence of Vector Replacement Systems is Decidable.', N'309-318', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (67, N'Multi-Granularity Locking for Nested Transactions: A Proof Using a Possibilities Mapping.', N'131-152', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (68, N'Bounded Quantification and Relations Recognizable by Finite Automata.', N'67-78', 6)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (69, N'A Complete Algebraic Characterization of Behavioral Subtyping.', N'617-663', 21)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (70, N'Minimum Feedback Vertex Sets in Cocomparability Graphs and Convex Bipartite Graphs.', N'337-346', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (71, N'Behavioural Approaches to Algebraic Specifications: A Comparative Study.', N'651-671', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (72, N'Quad Trees: A Data Structure for Retrieval on Composite Keys.', N'1-9', 42)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (73, N'On the Number of Relational Operators Necessary to Compute Certain Functions of Real Variables.', N'297-304', 43)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (74, N'A Study of Queueing Networks with Deterministic Service and Application to Computer Networks.', N'183-195', 44)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (75, N'Explaining the Wheel Sieve.', N'477-485', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (76, N'Another Polynomial Homomorphism.', N'153-169', 19)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (77, N'Variance Reduction Techniques for the Simulation of Markov Process.', N'21-37', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (78, N'Decomposition of Graphs and Monotone Formula Size of Homogeneous Functions.', N'689-696', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (79, N'Deterministic pushdown-CD-systems of stateless deterministic R(1)-automata.', N'229-255', 10)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (80, N'On the Synchronization in Parallel Communicating Grammar Systems.', N'351-367', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (81, N'Weakly Context-Sensitive Languages as Model for Programming Languages.', N'155-170', 24)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (82, N'Rules of Inference for Procedure Calls.', N'145-152', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (83, N'The Construction of Operator Interfaces Based on Logical Input Devices.', N'151-166', 43)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (84, N'High Level Tree Transducers and Iterated Pushdown Tree Transducers.', N'131-192', 40)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (85, N'Gobang ist PSPACE-vollstndig.', N'59-66', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (86, N'A note on autodense related languages.', N'209-219', 46)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (87, N'What is Failure? An Approach to Constructive Negation.', N'27-29', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (88, N'Instruction sequence processing operators.', N'139-172', 7)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (89, N'STG decomposition strategies in combination with unfolding.', N'433-474', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (90, N'Recursive Petri nets.', N'463-508', 47)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (91, N'Multitype Multiprogramming Models.', N'111-121', 44)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (92, N'Automatic Correction of Syntax-Errors in Programming Languages.', N'271-292', 42)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (93, N'Concurrent Bisimulations in Petri Nets.', N'231-264', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (94, N'Representation and uniformization of algebraic transductions.', N'395-417', 48)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (95, N'Enhanced prefetching and caching strategies for single- and multi-disk systems.', N'21-42', 49)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (96, N'Recording the Use of Memory in Right-Boundary Grammars and Push-Down Automata.', N'203-231', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (97, N'State space axioms for T-systems.', N'133-152', 31)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (98, N'Extended multi bottom-up tree transducers.', N'561-590', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (99, N'The Clean Termination of Iterative Programs.', N'199-217', 29)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (100, N'Infinite Proof Rules for Loops.', N'371-389', 25)
GO
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (101, N'Nonfinite Axiomatizability of the Equational Theory of Shuffle.', N'505-539', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (102, N'Running a job on a collection of partly available machines  with on-line restarts.', N'727-742', 51)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (103, N'Program Refinement in Fair Transition Systems.', N'503-535', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (104, N'Data Refinement by Calculation.', N'481-503', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (105, N'M-Nets: An Algebra of High-Level Petri Nets  with an Application to the Semantics of Concurrent Programming Languages.', N'813-857', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (106, N'On the Look-Ahead Problem in Lexical Analysis.', N'459-476', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (107, N'The maximum gain of increasing the number of preemptions in multiprocessor scheduling.', N'285-295', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (108, N'Data Encodings and Their Costs.', N'273-292', 34)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (109, N'A Functional Model for Describing and Reasoning About Time Behaviour of Computing Systems.', N'595-627', 53)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (110, N'Hierarchies of Complete Problems.', N'77-88', 19)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (111, N'Ein Vollstndigkeitssatz fr Programme und Schaltkreise.', N'64-78', 54)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (112, N'Optimizing the Costs of Hierarchical Quorum Consensus.', N'255-275', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (113, N'Type-based information flow analysis for the pi-calculus.', N'291-347', 49)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (114, N'Sur une Conjecture de S. Greibach.', N'293-295', 24)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (115, N'Applications of Efficient Mergeable Heaps for Optimization Problems on Trees.', N'53-58', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (116, N'On a Class of Recursive Procedures and Equivalent Iterative Ones.', N'305-320', 38)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (117, N'Algorithms for Fast Evaluation of Boolean Expressions.', N'107-116', 55)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (118, N'A Comparison of Two Synchronizing Concepts.', N'190-199', 18)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (119, N'How to Calculate Symmetries of Petri Nets.', N'545-590', 21)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (120, N'Nonterminals  Homomorphisms and Codings in Different Variations of OL-Systems.  I. Deterministic Systems.', N'87-106', 42)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (121, N'Recognizability of graph and pattern languages.', N'553-581', 56)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (122, N'The Synthesis Problem of Petri Nets.', N'297-315', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (123, N'A Binary Operation on Trees and an Initial Algebra Characterization for Finite Tree Types.', N'149-168', 57)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (124, N'On weighted first-order logics with discounting.', N'61-106', 17)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (125, N'A Characterization of Context-free String Languages by Directed Node-label Controlled Graph Grammars.', N'63-85', 29)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (126, N'Demonic  angelic and unbounded probabilistic choices in sequential programs.', N'329-354', 51)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (127, N'An Efficiency Preorder for Processes.', N'737-760', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (128, N'On the Generalization of Higman and Kruskal   s Theorems to Regular Languages and Rational Trees.', N'817-835', 21)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (129, N'Modeling Splits in File Structures.', N'349-362', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (130, N'Solving HPP and SAT by P Systems with Active Membranes and Separation Rules.', N'131-145', 9)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (131, N'Languages Accepted by Systolic Y-Tree Automata: Structural Characterizations.', N'761-778', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (132, N'Synchronized regular expressions.', N'31-70', 58)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (133, N'On regular tree languages and deterministic pushdown automata.', N'533-547', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (134, N'A Modal Logic for Message Passing Processes.', N'375-393', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (135, N'Maintaining Range Trees in Secondary Memory. Part I: Partitions.', N'423-452', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (136, N'Does indirect addressing matter? - A note.', N'485-491', 7)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (137, N'A Model of a Time Sharing Virtual Memory System Solved Using Equivalence and Decomposition Methods.', N'11-47', 42)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (138, N'Trace Nets and Process Automata.', N'647-679', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (139, N'A Principle of Independence for Binary Tree Searching.', N'293-298', 42)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (140, N'Reasoning Algebraically about Loops.', N'295-334', 59)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (141, N'Optimal Divide-and-Conquer to Compute Measure and Contour for a Set of Iso-Rectangles.', N'271-291', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (142, N'The Paging Drum Queue: A Uniform Perspective and Further Results.', N'485-500', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (143, N'The Undecidability of the Unification and Matching Problem for Canonical Theories.', N'157-171', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (144, N'Semantics  calculi  and analysis for object-oriented specifications.', N'255-284', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (145, N'Inhibitionsfelder.', N'253-269', 18)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (146, N'Head and state hierarchies for unary multi-head finite automata.', N'553-569', 17)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (147, N'The Programming Language Pascal.', N'35-63', 54)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (148, N'On the Number of Active-Operations Needed to Compute the Discrete Fourier Transform.', N'383-408', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (149, N'The stuttering principle revisited.', N'415-434', 61)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (150, N'Redundant Proofs of Non-Interference in Levin-Gries CSP Program Proofs.', N'145-156', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (151, N'Lazy Structure Sharing for Query Optimization.', N'255-270', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (152, N'Fair ambients.', N'535-594', 48)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (153, N'Concurrent Access to Data.', N'325-334', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (154, N'Relaxed red-black trees with group updates.', N'565-586', 16)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (155, N'Generation of Efficient   LALR   Parsers for Regular Right Part Grammars.', N'149-162', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (156, N'Priority Conflict-Free Petri Nets.', N'673-688', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (157, N'A Markovian queue with varying number of servers and applications to the performance comparison of HSDPA user equipment.', N'243-269', 3)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (158, N'Characterization of all Optimal Networks for a Simultaneous Computation of AND and NOR.', N'171-181', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (159, N'Optimum Multiway Search Trees.', N'119-133', 25)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (160, N'Parallel Integer Sorting Using Small Operations.', N'79-92', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (161, N'Stochastic cooperative distributed grammar systems and random graphs.', N'119-140', 58)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (162, N'Performance Evaluation of Fork and Join Synchronization Primitives.', N'525-553', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (163, N'Systolic Automata for VLSI on Balanced Trees.', N'335-344', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (164, N'Some properties of the disjunctive languages contained in  Q .', N'1-18', 3)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (165, N'Optimal Multiprogramming.', N'197-216', 44)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (166, N'A new natural structural congruence in the pi-calculus with replication.', N'385-430', 62)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (167, N'Classes of Systolic Y-Tree Automata and a Comparison with Systolic Trellis Automata.', N'623-643', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (168, N'On Procedures as Open Subroutines. I', N'311-333', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (169, N'On Real-Time Cellular Automata and Trellis Automata.', N'393-407', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (170, N'Transformational Design of Real-Time Systems Part I: From Requirements to Program Specifications.', N'1-65', 59)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (171, N'Performance Preorder and Competitive Equivalence.', N'805-835', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (172, N'A Survey of Normal Form Covers for Context Free Grammars.', N'271-294', 25)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (173, N'A Note on Synthesis and Classification of Sorting Algorithms.', N'73-80', 63)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (174, N'Liveness of a mutex algorithm in a fair process algebra.', N'209-235', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (175, N'Another Look at the Longest Ascending Subsequence Problem.', N'87-91', 29)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (176, N'Complexity Theory and the Operational Structure of Algebraic Programming Systems.', N'451-476', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (177, N'Models for Reactivity.', N'609-678', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (178, N'A Proof System for Distributed Processes.', N'305-332', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (179, N'Axioms for Generalized Graphs  Illustrated by a Cantor-Bernstein Proposition.', N'1075-1096', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (180, N'Finite State Relational Programs.', N'393-409', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (181, N'A Gap Between the Actual Complexity of Permutations and Their Entropy Defined by Sto.', N'347-362', 29)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (182, N'Exponentially decreasing number of operations in balanced trees.', N'57-78', 49)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (183, N'MAT learners for tree series: an abstract data type and two realizations.', N'165-189', 3)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (184, N'Correctness of the Compiling Process Based on Axiomatic Semantics.', N'1-20', 25)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (185, N'Paramodulated Connection Graphs.', N'67-86', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (186, N'The Lattice of Data Refinement.', N'105-135', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (187, N'Efficient LL(1) Error Correction and Recovery Using Only Insertions.', N'141-154', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (188, N'Backtracking in Recursive Computations.', N'125-144', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (189, N'Formal Derivation of Strongly Correct Concurrent Programs.', N'1-31', 38)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (190, N'A Formal Identification between Tuples and Lists with an Application to List-Arithmetic Categories.', N'61-78', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (191, N'Efficient Worst-Case Data Structures for Range Searching.', N'155-168', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (192, N'Monotone Data Flow Analysis Frameworks.', N'305-317', 2)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (193, N'Disambiguating Grammars by Exclusion of Sub-Parse Trees.', N'511-522', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (194, N'Laws of Data Refinement.', N'287-308', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (195, N'Axiomatising Finite Delay Operators.', N'61-88', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (196, N'Fast allocation and deallocation with an improved buddy system.', N'273-291', 61)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (197, N'A Linear Space Algorithm for the LCS Problem.', N'353-362', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (198, N'Representing the integers with powers of 2 and 3.', N'293-306', 9)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (199, N'Efficient recognition algorithms for boundary and linear eNCE graph languages.', N'619-632', 51)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (200, N'Refinement of actions for real-time concurrent systems with causal ambiguity.', N'389-418', 56)
GO
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (201, N'Comparing Locality and Causality Based Equivalences.', N'697-718', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (202, N'Proving Relative Lower Bounds for Incremental Algorithms.', N'665-683', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (203, N'Data Refinement of Mixed Specifications.', N'91-129', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (204, N'A note on pure and p-pure languages.', N'579-595', 58)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (205, N'A distributed resource allocation algorithm for many processes.', N'297-329', 10)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (206, N'Complexity of Distributed Commit Protocols.', N'577-595', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (207, N'Adaptive sorting: an information theoretic perspective.', N'33-42', 27)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (208, N'Erratum: Predicative Methodology.', N'285', 40)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (209, N'The Correctness of the Schorr-Waite List Marking Algorithm.', N'211-221', 57)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (210, N'Synchronizable Deterministic Pushdown Automata and the Decidability of their Equivalence.', N'597-605', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (211, N'Distance Measures for Point Sets and their Computation.', N'109-133', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (212, N'Optimum Reorganization Points for Arbitrary Database Costs.', N'17-30', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (213, N'Analyse d   un algorithme de gestion simultane Mmoire centrale - Disque de pagination.', N'321-345', 24)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (214, N'Opportunistic Algorithms for Eliminating Supersets.', N'733-754', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (215, N'Synchronized extension systems.', N'449-465', 51)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (216, N'Klaus Samelson.', N'1-2', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (217, N'The Method of Attributes for Data Flow Analysis: Part II. Demand Analysis.', N'265-272', 6)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (218, N'Reduction Rules for Time Petri Nets.', N'687-706', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (219, N'Electing a Leader in a Ring with Link Failures.', N'79-91', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (220, N'Parallel Approximation Schemes for Problems on Planar Graphs.', N'387-408', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (221, N'Zur Theorie der Partiell-linearen Realisierungen endlicher Automaten', N'253-282', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (222, N'Compositional type checking of delta-oriented software product lines.', N'77-122', 10)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (223, N'Single Machine Scheduling with Deadlines and Increasing Rates of Processing Times.', N'673-692', 21)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (224, N'On Parsing Arithmetic Expressions in a Multiprocessing Environment.', N'287-310', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (225, N'A Probabilistic Analysis of the Height of Tries and of the Complexity of Triesort.', N'229-237', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (226, N'A Class of Coders Based on GSM.', N'779-791', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (227, N'An All-Round Sweep Algorithm for 2-Dimensional Nearest-Neighbor Problems.', N'383-394', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (228, N'Richer interface automata with optimistic and pessimistic compatibility.', N'305-336', 31)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (229, N'On the System of word equations x^i_1 x^i_2 ... x^i_m = y^i_1 y^i_2 ...y^i_n (i=1  2  ...) in a Free Monoid.', N'217-230', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (230, N'Two-Level Meta-Controlled Substitution Grammars.', N'323-339', 6)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (231, N'The query complexity of estimating weighted averages.', N'417-426', 3)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (232, N'  LALR   (1  1) Parser Generation for Regular Right Part Grammars.', N'29-45', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (233, N'Grammars on Partial Graphs.', N'297-316', 19)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (234, N'Average-Case Complexity for the Execution of Recursive Definitions on Relational Databases.', N'211-243', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (235, N'Frameworks for Abstract Interpretation.', N'103-129', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (236, N'OBSCURE: A Specification Language for Abstract Data Types.', N'303-350', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (237, N'Performance Bounds on the Splitting Algorithm for Binary Testing.', N'347-355', 24)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (238, N'Rational Set of Trees and the Algebraic Semantics of Logic Programming.', N'249-260', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (239, N'Rational Bijection of Rational Sets.', N'365-378', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (240, N'Some Comments on Concurrent Readers and Writers.', N'335-340', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (241, N'A Branch-and-Bound Algorithm to Obtain an Optimal Evaluation Tree for Monotonic Boolean Functions.', N'311-319', 55)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (242, N'Integrating Code Generation and Peephole Optimization.', N'85-109', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (243, N'Is Text Compression by Prefixes and Suffixes Practical?', N'371-389', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (244, N'Methods for the Automatic Construction of Error Correcting Parsers.', N'115-139', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (245, N'Optimal recovery schemes in fault tolerant distributed computing.', N'341-365', 61)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (246, N'Ordered Attributed Grammars.', N'229-256', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (247, N'Optimal Bounds on the Gain of Permitting Dynamic Allocation of Communication Channels in Distributed Computing.', N'425-446', 59)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (248, N'Linearly bounded infinite graphs.', N'265-292', 9)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (249, N'A Practical Example of the Specification of Abstract Data Types.', N'205-224', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (250, N'Sur diverses familles de langages fermes par transductions rationelle', N'180-188', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (251, N'Specification and Verification of Object-Oriented Programs Using Supertype Abstraction.', N'705-778', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (252, N'An efficient simulation algorithm on Kripke structures.', N'107-125', 17)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (253, N'On 3-Head Versus 2-Head Finite Automata.', N'193-200', 42)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (254, N'Automaten in planaren Graphen.', N'287-298', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (255, N'A Conservation Law for G/G/m Queueing Systems.', N'105-109', 6)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (256, N'Project scheduling with irregular costs: complexity  approximability  and algorithms.', N'83-97', 64)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (257, N'Toward Formal Development of Programs from Algebraic Specifications: Implementations Revisited.', N'233-281', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (258, N'Programmed grammars and their relation to the LBA problem.', N'223-242', 9)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (259, N'Semantic Decomposition of Computer Programs: An Aid to Program Testing.', N'243-269', 42)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (260, N'Context-Free Graph Grammars and Concatenation of Graphs.', N'773-803', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (261, N'Maximum Entropy Two-Station Cyclic Queues with Multiple General Servers.', N'241-267', 40)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (262, N'A polynomial time computable metric between point sets.', N'765-780', 51)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (263, N'The Family of One-Counter Languages is Closed Under Quotient.', N'579-588', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (264, N'Sticky-free and overhang-free DNA languages.', N'119-157', 65)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (265, N'A Class of Linearly Parsable Graph Grammars.', N'175-201', 6)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (266, N'Efficient systematic clustering method for  k -anonymization.', N'51-66', 3)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (267, N'Validation of a Computer Performance Model of the Exponential Queuing Network Family.', N'137-152', 44)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (268, N'Reducing non-determinism in right nulled GLR parsers.', N'459-489', 62)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (269, N'Deciding probabilistic bisimilarity over infinite-state probabilistic systems.', N'131-154', 27)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (270, N'Abstract reduction in directed model checking CCS processes.', N'313-341', 7)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (271, N'Compositional construction of most general controllers.', N'443-482', 31)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (272, N'Through the Mincing Machine with a Boolean Layer Cake.', N'381-407', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (273, N'The Implementation of Retention in a Coroutine Environment.', N'221-233', 43)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (274, N'Asymptotic Expansions of the Mergesort Recurrences.', N'911-919', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (275, N'Logic for Improving Integrity Checking in Relational Data Bases.', N'227-253', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (276, N'Correct hardware synthesis - An algebraic approach.', N'363-396', 3)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (277, N'A Proof Technique for Communicating Sequential Processes.', N'281-302', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (278, N'New proof for the undecidability of the circular PCP.', N'331-341', 10)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (279, N'The Method of Forced Enumeration for Nondeterministic Automata.', N'279-284', 40)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (280, N'Finite Complete Rewriting Systems and the Complexity of the Word Problem.', N'521-540', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (281, N'On the Expressiveness of Subset-Sum Representations.', N'665-672', 21)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (282, N'A Note on Multi-queue Scheduling of Two Tasks.', N'113-120', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (283, N'Petri Net Algorithms in the Theory of Matrix Grammars.', N'719-728', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (284, N'Decision Problems Concerning Thinness and Slenderness of Formal Languages.', N'625-636', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (285, N'General Correctness: A Unification of Partial and Total Correctness.', N'67-83', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (286, N'Stratified Balanced Search Trees.', N'345-359', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (287, N'Purely Top-Down Updating Algorithms for Stratified Search Trees.', N'85-100', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (288, N'Crypt-Equivalent Algebraic Specifications.', N'111-153', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (289, N'On Some Decidable Properties of Finite State Translations.', N'349-364', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (290, N'Size-Depth Tradeoff in Monotone Boolean Formulae.', N'227-243', 38)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (291, N'On Efficient Implementation of an Approximation Algorithm for the Steiner Tree Problem.', N'369-380', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (292, N'Coincidental extension of scattered context languages.', N'307-314', 58)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (293, N'Parallel communicating grammar systems with terminal transmission.', N'511-540', 51)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (294, N'Time Optimal Left to Right Construction of Position Trees.', N'461-474', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (295, N'Relaxed balance for search trees with local rebalancing.', N'743-763', 51)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (296, N'Analytic Models for the Primary Site Approach to Fault-Tolerance.', N'543-557', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (297, N'EOL Forms.', N'75-96', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (298, N'Preemptive online algorithms for scheduling with machine cost.', N'315-340', 61)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (299, N'Logical and Schematic Characterization of Complexity Classes.', N'61-87', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (300, N'Storage Utilization in B*-Trees with a Generalized Overflow Technique.', N'35-55', 43)
GO
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (301, N'View selection for  real  conjunctive queries.', N'289-321', 47)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (302, N'A Run-Time Load Balancing Strategy for Highly Parallel Systems.', N'63-94', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (303, N'A Logic-Based Approach to Program Flow Analysis.', N'457-504', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (304, N'Monodes syntactiques des langages algbriques.', N'399-413', 2)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (305, N'An Algorithmic and Complexity Analysis of Interpolation Search.', N'39-52', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (306, N'On constructibility and unconstructibility of LTS operators from other LTS operators.', N'207-234', 31)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (307, N'Strongly transitive automata and the Cern conjecture.', N'591-607', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (308, N'Possibility and Impossibility Results in a Shared Memory Environment.', N'1-20', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (309, N'Type-based hot swapping of running modules.', N'181-220', 61)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (310, N'Specifying Communication in Distributed Information Systems.', N'591-616', 21)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (311, N'Nearly Optimal Hierarchies for Network and Formula Size.', N'217-221', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (312, N'Compositional Analysis of C/C++ Programs with VeriSoft.', N'45-71', 9)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (313, N'On the tree inclusion problem.', N'653-670', 51)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (314, N'Controlled finite automata.', N'327-337', 17)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (315, N'Algebraic Models of Microprocessors: Architecture and Organisation.', N'421-456', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (316, N'Program Analysis and Optimization through Kernel-Control Decomposition.', N'195-216', 34)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (317, N'Improved matrix pair undecidability results.', N'191-205', 47)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (318, N'A top-down proof procedure for generalized data dependencies.', N'1-29', 58)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (319, N'Simple Extensions of 1-writer Atomic Variable Constructions to Multiwriter Ones.', N'177-202', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (320, N'Flow Languages Equal Recursively Enumerable Languages.', N'209-217', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (321, N'Lower Bounds for On-Line Two-Dimensional Packing Algorithms.', N'207-225', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (322, N'Optimal semi-online algorithms for preemptive scheduling problems with inexact partial information.', N'571-590', 47)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (323, N'Two Graph Algorithms Derived.', N'489-510', 59)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (324, N'A Maximum Entropy Priority Approximation for a Stable   G/G/   1 Queue.', N'247-286', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (325, N'A Kernel Language for Programmed Rewriting of (Hyper)graphs.', N'523-546', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (326, N'Subtyping for session types in the pi calculus.', N'191-225', 49)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (327, N'A Fair Calculus of Communicating Systems.', N'417-441', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (328, N'Generalized normal form for rewriting P systems.', N'721-734', 16)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (329, N'Type Introduction for Equational Rewriting.', N'1007-1029', 21)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (330, N'On decidability of LTL model checking for process rewrite systems.', N'1-28', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (331, N'Maintaining Range Trees in Secondary Memory. Part II: Lower Bounds.', N'453-480', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (332, N'The Multiple Phase Service Network with Generalized Processor Sharing.', N'245-284', 38)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (333, N'Complexity of Analyzing the Synchronization Structure of Concurrent Programs.', N'57-84', 43)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (334, N'Geometrical Tools to Map Systems of Affine Recurrence Equations on Regular Arrays.', N'137-160', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (335, N'Binary Search Trees in Secondary Memory.', N'3-17', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (336, N'Efficient Algorithms for Checking the Atomicity of a Run of Read and Write Operations.', N'155-170', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (337, N'Minimally adequate teacher synthesizes statechart diagrams.', N'235-259', 16)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (338, N'Order and Metric in the Stream Semantics of Elemental Concurrency.', N'491-511', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (339, N'Relational Database Constraints as Counterexamples.', N'167-189', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (340, N'Thrifty Execution of Task Pipelines.', N'35-45', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (341, N'Expressibility of Output Equals Input.', N'645-662', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (342, N'A Fixed Point Approach to Parallel Discrete Event Simulation.', N'611-629', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (343, N'Dual unbounded nondeterminacy  recursion  and fixpoints.', N'323-344', 47)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (344, N'Properties of Data Flow Frameworks.', N'121-163', 66)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (345, N'Top-Down Syntax Analysis.', N'79-110', 54)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (346, N'Information Theoretic Approximations for the   M/G/   1 Retrial Queue.', N'559-571', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (347, N'Hiding in Stream Semantics of Uniform Concurrency.', N'381-397', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (348, N'Orthogonality of Information Structures.', N'243-261', 34)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (349, N'Data Management Support for Database Management.', N'1-28', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (350, N'Synchronous cooperation for explicit multi-threading.', N'525-569', 47)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (351, N'An Alternative Implementation of an Insertion-Only Recovery Technique.', N'289-298', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (352, N'On the Expansion of Non-Linear Functions.', N'559-574', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (353, N'Structured Numbers: Properties of a Hierarchy of Operations on Binary Trees.', N'1-15', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (354, N'Analysis of Space Allocation in a Generally Fragmented Linear Store.', N'93-104', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (355, N'EOL Systems with Control Devices.', N'373-386', 42)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (356, N'Computational Fractal Geometry with WFA.', N'151-166', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (357, N'd-Words and d-Languages.', N'709-727', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (358, N'Parsing Regular Grammars with Finite Lookahead.', N'125-138', 29)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (359, N'A Simple  Fast  and Effective LL(1) Error Repair Algorithm.', N'109-120', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (360, N'Approximation schemes for the Min-Max Starting Time Problem.', N'657-674', 62)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (361, N'Genericity and the pi-calculus.', N'83-141', 49)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (362, N'Erratum: The size of random bucket trees via urn models.', N'63', 64)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (363, N'Multi-tilde-bar expressions and their automata.', N'413-436', 7)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (364, N'On best transitive approximations to simple graphs.', N'637-655', 62)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (365, N'Page Size in Demand-Paging Systems.', N'1-23', 67)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (366, N'Synthesizing robust systems.', N'193-220', 17)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (367, N'Comparing Expressibility of Normed BPA and Normed BPP Processes.', N'233-256', 59)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (368, N'On Hierarchies of Abstract Data Types.', N'1-33', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (369, N'An Algorithm for Merging Heaps.', N'171-186', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (370, N'Short Proofs for Tricky Formulas.', N'253-275', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (371, N'Some Average Performance Measures for the B-Tree.', N'541-557', 68)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (372, N'Optimum Decision Trees - An Optimal Variable Theorem and its Related Applications.', N'475-498', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (373, N'The `Hoare Logic    of Concurrent Programs.', N'21-37', 25)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (374, N'Robust Data Types.', N'365-397', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (375, N'Random sprouts as internet models  and Plya processes.', N'1-18', 64)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (376, N'Concurrency of Operations on  B-Trees.', N'1-21', 39)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (377, N'Update Operations in Deductive Databases with Functional Dependencies.', N'573-600', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (378, N'A complexity tradeoff in ranking-function termination proofs.', N'57-72', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (379, N'Timed automata with urgent transitions.', N'317-347', 62)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (380, N'Constructing Maximal Slicings from Geometry.', N'267-288', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (381, N'Optimal Worst Case Trees.', N'475-489', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (382, N'Formes de langages et de grammaires.', N'193-213', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (383, N'An efficient algorithm for finding ideal schedules.', N'1-14', 7)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (384, N'Specification and Verification of Database Dynamics.', N'625-661', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (385, N'Chromatic Binary Search Trees. A Structure for Concurrent Rebalancing.', N'547-557', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (386, N'Apex Graph Grammars and Attribute Grammars.', N'537-571', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (387, N'A deterministic skip list for k-dimensional range search.', N'221-255', 61)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (388, N'A Tree-Based Mergesort.', N'775-793', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (389, N'Splitting forward simulations to copewith liveness.', N'583-602', 56)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (390, N'On an Exponential Server with General Cyclic Arrivals.', N'319-334', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (391, N'Total lineare Realisierbarkeit endlicher Automaten.', N'385-397', 24)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (392, N'A Decidability Criterion for van Wijngaarden Grammars.', N'353-375', 35)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (393, N'Online square and cube packing.', N'595-606', 61)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (394, N'Replaceability and Computational Equivalence for Monotone Boolean Functions.', N'433-449', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (395, N'Information Theoretic Approximations for   M/G/   1 und   G/G/   1 Queuing Systems.', N'43-61', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (396, N'A Model and a Fast Algorithm for Multiple Errors Spelling Correction.', N'281-302', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (397, N'Subrekursive Komplexitt bei Gruppen: II. Der Einbettungssatz von Higman fr entscheidbare Gruppen.', N'183-193', 34)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (398, N'A Useful Lemma for Context-Free Programmed Grammars.', N'373-386', 57)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (399, N'Three Measures for Synchronic Dependence in Petri Nets.', N'325-338', 43)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (400, N'Data structures for order-sensitive predicates in parallel nondeterministic systems.', N'21-43', 69)
GO
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (401, N'Labelled transition logic: an outline.', N'831-879', 51)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (402, N'A Multiclass Networt Model of a Demand Paging Computer System.', N'331-343', 34)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (403, N'Correctness of Semantic Integrity Checking in Database Management Systems.', N'25-57', 40)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (404, N'A Lower Time Bound for the Knapsack Problem on Random Access Machines.', N'385-395', 43)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (405, N'Exploiting colored Petri nets to decide on permutation admissibility.', N'43-55', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (406, N'Deterministic Sequential Functions.', N'545-554', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (407, N'Step semantics of boolean nets.', N'15-39', 10)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (408, N'On the Average Internal Path Length of   m   -ary Search Trees.', N'111-117', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (409, N'Querying Sequence Databases with Transducers.', N'511-544', 21)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (410, N'Dynamic Weighted Binary Search Trees.', N'341-362', 57)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (411, N'Bi-Catenation and Shuffle Product of Languages.', N'689-707', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (412, N'Letter from the Editor.', N'227-228', 51)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (413, N'Deterministic Grammars and Grammar Morphisms.', N'567-583', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (414, N'On Non-Determinancy in Simple Computing Devices.', N'336-344', 18)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (415, N'Efficiently building a parse tree from a regular expression.', N'121-144', 69)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (416, N'Refinement verification of the lazy caching algorithm.', N'195-222', 9)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (417, N'do Considered od: A Contribution to the Programming Calculus.', N'287-304', 57)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (418, N'A Robust and Efficient Spatial Data Structure.', N'335-373', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (419, N'The Expressive Power of the Bounded-Iteration Construct.', N'631-656', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (420, N'Query optimization in information integration.', N'257-287', 10)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (421, N'On the Role of Unification in Mechanical Theorem Proving.', N'319-323', 2)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (422, N'Reducing the Number of Multiplikations in Iterative Processes.', N'43-45', 67)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (423, N'Solving a weak NP-complete problem in polynomial time by using mutual mobile membrane systems.', N'409-415', 3)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (424, N'The Characterization of Parallel Ultralinear Grammars by Rational Power Series.', N'129-139', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (425, N'Efficient Memo-Table Management Strategies.', N'43-81', 66)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (426, N'Optimization of a Subclass of Conjunctive Queries.', N'1-26', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (427, N'Axiomatic Approach to Total Correctness of Programs.', N'243-263', 24)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (428, N'On Abelian 2-avoidable binary patterns.', N'521-533', 48)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (429, N'Concurrent Testing of Processes.', N'509-543', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (430, N'Efficient Comparison of Program Slices.', N'713-732', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (431, N'A Reply to Comments on A Comparison of Two Synchronizing Concepts', N'189-190', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (432, N'New bounds for the query complexity of an algorithm that learns DFAs with correction and equivalence queries.', N'43-50', 3)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (433, N'On Simplest Possible Solutions for Post Correspondence Problems.', N'441-457', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (434, N'Cooperative Distributed Dynamic Load Balancing.', N'663-676', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (435, N'Necessary and Sufficient Conditions for the Universality of Programming Formalisms.', N'347-377', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (436, N'Timed tree automata with an application to temporal logic.', N'89-116', 70)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (437, N'ber die Vernetzungsstruktur von Maschinen.', N'171-186', 24)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (438, N'The Boolean closure of linear context-free languages.', N'177-191', 27)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (439, N'Towards action refinement for true concurrent real time.', N'531-577', 58)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (440, N'Tableau-Based Model Checking in the Propositional Mu-Calculus.', N'725-747', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (441, N'The Complexity of Reachability in Distributed Communicating Processes.', N'333-354', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (442, N'Bin stretching revisited.', N'97-117', 58)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (443, N'A Characterization of Attribute Evaluation in Passes.', N'427-464', 29)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (444, N'Analysis of a Class of Communicating Finite State Machines.', N'499-522', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (445, N'A Calculus of Refinements for Program Derivations.', N'593-624', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (446, N'Parallel LL parsing.', N'73', 47)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (447, N'The identity problem of finitely generated bi-ideals.', N'105-115', 7)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (448, N'Recursive Assertions and Parallel Programs.', N'219-232', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (449, N'Finding vertex-surjective graph homomorphisms.', N'381-394', 7)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (450, N'Reasoning about faulty quantum programs.', N'403-432', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (451, N'Fast Algorithms for the Elimination of Common Subexpressions', N'191-213', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (452, N'Further Analysis of Code Generation for a Single Register Machine.', N'135-147', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (453, N'The Synchronization of Independent Processes.', N'15-34', 44)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (454, N'Unconditional Transfer in Regulated Rewriting.', N'837-857', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (455, N'An Effectively Given Initial Semigroup.', N'203-227', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (456, N'Canonical prefixes of Petri net unfoldings.', N'95-118', 65)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (457, N'Hardness of equivalence checking for composed finite-state systems.', N'169-191', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (458, N'Acceptable Functional Programming Systems.', N'67-98', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (459, N'Erratum: Proving Properties of Pascal Programs in MIZAR 2.', N'699-707', 53)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (460, N'Truly Prefix-Correct Chain-Free   LR   (1) Parsers.', N'499-536', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (461, N'A word on 7 letters which is non-repetitive up to mod 5.', N'451-468', 58)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (462, N'Some Efficient Computational Algorithms Related to Phase Models.', N'157-177', 63)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (463, N'Axiomatic Approach to Side Effects and General Jumps.', N'357-360', 2)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (464, N'From ATP to Timed Graphs and Hybrid Systems.', N'181-202', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (465, N'On the Recognition of Permuted Supnick and Incomplete Monge Matrices.', N'559-569', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (466, N'Tree-systems of morphisms.', N'131-153', 70)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (467, N'Non uniform random generation of generalized Motzkin paths.', N'603-616', 56)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (468, N'Parallel Tree Contraction and Prefix Computations on a Large Family of Interconnection Topologies.', N'145-153', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (469, N'Developmental Systems with Locally Catenative Formulas', N'214-248', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (470, N'Preference rankings in the face of uncertainty.', N'211-231', 58)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (471, N'Self-stabilizing group communication in directed networks.', N'609-636', 62)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (472, N'Connectivity of workflow nets: the foundations of stepwise verification.', N'213-242', 3)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (473, N'Trajectory-based codes.', N'491-527', 62)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (474, N'First-order logics: some characterizations and closure properties.', N'225-248', 7)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (475, N'LAR: A Logic of Algorithmic Reasoning.', N'243-266', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (476, N'Concurrent Algorithms for Root Searching.', N'361-376', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (477, N'On Proving that Certain Languages are not ETOL.', N'407-415', 19)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (478, N'Stochastic game logic.', N'203-224', 7)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (479, N'Worst-Case Analysis for Region and Partial Region Searches in Multidimensional Binary Search Trees and Balanced Quad Trees.', N'23-29', 39)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (480, N'Ambiguity and Precedence in Syntax Description.', N'183-192', 42)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (481, N'Maintaining Order in a Generalized Linked List.', N'101-112', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (482, N'Verification of Programs with Procedure-Type Parameter.', N'149-169', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (483, N'Synthesized and Inherited Functions. A new Computational Model for Syntax-Directed Semantic.', N'431-477', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (484, N'Strongest Invariant Functions: Their Use in the Systematic Analysis of While Statements.', N'47-66', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (485, N'On Finite Automata with Limited Nondeterminism.', N'595-624', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (486, N'The Design of a Portable Programming Language.', N'157-167', 6)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (487, N'Correctness of dataflow and systolic algorithms using algebras of streams.', N'45-88', 70)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (488, N'Space Sweep Solves Intersection of Convex Polyhedra.', N'501-519', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (489, N'Task Allocation in Fault-Tolerant Distributed Systems.', N'261-281', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (490, N'Resolution on Formula-Trees.', N'425-438', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (491, N'Merging Sorted Runs Using Large Main Memory.', N'195-215', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (492, N'Minimal Huffman Trees.', N'721-734', 21)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (493, N'On the Implementation of Strassen   s Fast Multiplication Algorithm.', N'341-355', 19)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (494, N'Single Machine Flow-Time Scheduling with Scheduled Maintenance.', N'375-382', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (495, N'Infinitary rewriting: closure operators  equivalences and models.', N'123-156', 10)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (496, N'On Alternation.', N'243-255', 25)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (497, N'A Network for the Detection of Words in Continuous Speech.', N'431-448', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (498, N'Constructing LR Parsers for Regular Right Part Grammars.', N'177-193', 57)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (499, N'Combinator-Based Compilation of Recursive Functions with Different Parameter Passing Modes.', N'653-678', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (500, N'Descriptively Complete Process Logic.', N'359-369', 25)
GO
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (501, N'Fair sticker languages.', N'213-225', 69)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (502, N'Predicate-Transformer Semantics of General Recursion.', N'309-332', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (503, N'Symbolic models for control systems.', N'477-500', 48)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (504, N'Locations Considered Unnecessary.', N'221-242', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (505, N'Interactaive Graphics on Intelligent Terminals in a Time-Sharing Environment.', N'257-271', 35)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (506, N'A Yo-Yo Parsing Algorithm for a Large Class of van Wijngaarden Grammars.', N'461-481', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (507, N'Decision Problems for Finite Special String-Rewriting Systems that are Confluent on Some Congruence Class.', N'477-510', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (508, N'Delay and energy efficiency analysis of multicast cooperative ARQ over wireless networks.', N'51-60', 17)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (509, N'On the Lengths of Values in a Finite Transducer.', N'663-687', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (510, N'Effective Construction of the Syntactic Algebra of a Recognizable Series on Trees.', N'351-363', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (511, N'Exploiting a hypergraph model for finding Golomb rulers.', N'449-471', 17)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (512, N'Querying Datalog Programs with Temporal Logic.', N'679-700', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (513, N'Grundlagen einer Theorie der Datenstrukturen und Zugriffssysteme. Teil I: Datenstrukturen und Schemata.', N'201-211', 42)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (514, N'Distributed synthesis for regular and contextfree specifications.', N'221-260', 17)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (515, N'Van Wijngaarden Grammars and Space Complexity Classs EXSPACE.', N'193-199', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (516, N'A Practical General Method for Constructing LR(k) Parsers.', N'249-268', 2)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (517, N'Berechnung und Programm. I.', N'320-335', 18)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (518, N'Optimal Merging of 2 Elements with n Elements.', N'145-158', 54)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (519, N'Short Resolution Proofs for a Sequence of Tricky Formulas.', N'277-280', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (520, N'Periods in Extensions of Words.', N'165-171', 9)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (521, N'A Fully Abstract Semantics for Causality in the pi-Calculus.', N'353-400', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (522, N'Hybrid networks of evolutionary processors are computationally complete.', N'257-272', 61)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (523, N'A General Proof Rule for Procedures in Predicate Transformer Semantics.', N'301-313', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (524, N'Distributed Consensus  revisited.', N'377-425', 47)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (525, N'Inherently Nonplanar Automata.', N'89-94', 19)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (526, N'Packing rectangles in a strip.', N'673-693', 16)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (527, N'Throughput analysis in wireless networks with multiple users and multiple channels.', N'147-164', 9)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (528, N'A Unified Approach to the Generation and the Acception of Formal Languages.', N'377-390', 34)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (529, N'On Computing the Transitive Closure of a Relation.', N'303-314', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (530, N'Deep pushdown automata.', N'541-552', 56)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (531, N'A Theory of Interactive Programming.', N'1-20', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (532, N'A Characterization of Systolic Binary Tree Automata and Applications.', N'193-207', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (533, N'Conceptual Classes and System Classes in Object Databases.', N'181-210', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (534, N'Decidable Properties of Monadic Recursive Schemas With a Depth Parameter.', N'277-310', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (535, N'Data Refinement and Algebraic Structure.', N'693-719', 21)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (536, N'A Model of a Virtual Memory System.', N'365-386', 19)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (537, N'Procdures de reprise dans les systmes de gestion de base de donnes rparties.', N'305-340', 57)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (538, N'A 2.5 n  Lower Bound on the Monotone Network Complexity of T_3^n.', N'229-240', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (539, N'Converting Untyped Formulas to Typed Ones.', N'637-643', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (540, N'Sequential and Jumping Machines and their Relation to Computers', N'162-171', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (541, N'Class Hierarchy Specialization.', N'927-982', 21)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (542, N'A Characterization of Database Graphs Admitting a Simple Locking Protocol.', N'1-13', 29)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (543, N'Some Modified Algorithms for Dijkstra   s Longest Upsequence Problem.', N'1-15', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (544, N'Congruences et Automorphismes des Automates Finis.', N'159-172', 54)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (545, N'Familles de langages translatables et fermes par crochet', N'383-393', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (546, N'Program Proving: Coroutines.', N'50-63', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (547, N'An Experimentally Validated Model of the Paging Drum.', N'103-117', 57)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (548, N'Partage de tches entre processeurs homogenes.', N'449-466', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (549, N'Correction to Null Values in Nested Relational Databases by Mark A. Roth  H. F. Korth  and A. Silberschatz.', N'603-605', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (550, N'Equilibria for two parallel links: the strong price of anarchy versus the price of anarchy.', N'375-389', 46)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (551, N'A comprehensive database schema integration method based on the theory of formal concepts.', N'475-524', 61)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (552, N'The time complexity of typechecking tree-walking tree transducers.', N'139-154', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (553, N'  NP   -Hard Problems in Hierarchical-Tree Clustering.', N'311-323', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (554, N'General Predicate Transformer and the Semantics of a Programming Language With Go To Statement.', N'35-57', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (555, N'Eigenschaften der von linearen Automaten erkennbaren Worte.', N'365-383', 24)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (556, N'Optimal Scheduling for Two-Processor Systems.', N'200-213', 18)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (557, N'Application of Regular Canonical Systems to Grammars Translatable from Left to Right.', N'111-114', 54)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (558, N'Automatic Program Verification I: A Logical Basis and its Implementation.', N'145-182', 42)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (559, N'A Family of NP-Complete Data Aggregation Problems.', N'485-499', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (560, N'Accepting Zeno words: a way toward timed refinements.', N'45-81', 69)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (561, N'Approximate Analysis of Exponential Queueing Systems with Blocking.', N'19-66', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (562, N'A Model of the Dynamic Behavior of B-Trees.', N'41-59', 63)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (563, N'On the Expected Height of Fringe-Balanced Trees.', N'459-466', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (564, N'Parsing Extended   LR(k)   Grammars.', N'115-127', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (565, N'A Fine-Grained Data-Flow Analysis Framework.', N'653-665', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (566, N'Linear Regular Sets.', N'203-208', 6)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (567, N'A Method for Transforming Grammars into LL(k) Form.', N'339-369', 38)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (568, N'Remarks on Some Comments on Concurrent Readers and Writers by Reidar Conradi.', N'57-60', 14)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (569, N'Bounded Delay for a Free Address.', N'233-254', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (570, N'Avoiding cross-bifix-free binary words.', N'157-173', 10)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (571, N'On the Algebraic Specification of Infinite Objects - Ordered and Continuous Models of Algebraic Types.', N'537-578', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (572, N'A Hierarchy of Uniquely Parsable Grammar Classes and Deterministic Acceptors.', N'389-410', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (573, N'On a Gauntlet Thrown by David Gries.', N'357-359', 19)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (574, N'The Universe Problem for Unrestricted Flow Languages.', N'85-96', 43)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (575, N'The Expected Additive Weight of Trees.', N'711-740', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (576, N'Information Management in Context Trees.', N'85-94', 6)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (577, N'Vector assignment schemes for asymmetric settings.', N'501-514', 56)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (578, N'Automatic Analysis of Inflectional Morphems in German Nouns.', N'360-374', 18)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (579, N'A Direct Complement Construction for LR(1) Grammars.', N'781-797', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (580, N'Using the Causal Domain to Specify and verify Distributed Programs.', N'667-686', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (581, N'A Formal Semantics for Concurrent Systems with a Priority Relation.', N'33-55', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (582, N'The Stability Problem of Broadcast Packet Switching Computer Networks.', N'49-53', 42)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (583, N'Resolution of Ambiguity in Parsing.', N'387-395', 19)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (584, N'Algebraic Correctness Proofs for Compiling Recursive Function Definitions with Strictness Information.', N'1-43', 9)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (585, N'Symmetry and partial order reduction techniques in model checking Rebeca.', N'33-66', 46)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (586, N'Optimal Disk Merge Patterns.', N'25-35', 67)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (587, N'Infinitary Parallelism without Unbounded Nondeterminism in CSP.', N'467-487', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (588, N'Files d   attente exponentielles ayant des parametres non-stationnaires dans le temps.', N'177-192', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (589, N'Concurrent Search and Insertion in 2-3 Trees.', N'63-86', 25)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (590, N'An Abstract Data Type for Name Analysis.', N'539-558', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (591, N'The SB-Tree: An Index-Sequential Structure for High-Performance Sequential Access.', N'241-265', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (592, N'Relational Heuristics for the Design of Deterministic Programs.', N'239-276', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (593, N'pi-calculus with noisy channels.', N'525-593', 61)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (594, N'Using transition set sequences to partition behaviors of petri nets.', N'15-28', 7)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (595, N'Ramsey Numbers and an Approximation Algorithm for the Vertex Cover Problem.', N'115-123', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (596, N'Stable Duplicate-Key Extraction with Optimal Time and Space Bounds.', N'473-484', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (597, N'Small universal accepting hybrid networks of evolutionary processors.', N'133-146', 46)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (598, N'The Report on the Standard Hardware Representation for ALGOL 68.', N'105-119', 34)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (599, N'The Semigroups of Linearly Realizable Finite Automata I.', N'341-367', 6)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (600, N'Amounts of Nondeterminism in Finite Automata.', N'199-204', 45)
GO
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (601, N'Incremental LR Parers.', N'307-321', 6)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (602, N'An algorithmic study of switch graphs.', N'295-312', 7)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (603, N'Semi-synchronous transductions.', N'29-42', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (604, N'On the Cost-Effectiveness of PRAMs.', N'463-487', 59)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (605, N'An Efficient General Iterative Algorithm for Dataflow Analysis.', N'679-694', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (606, N'Branching Processes of Petri Nets.', N'575-591', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (607, N'Distances in random digital search trees.', N'243-264', 9)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (608, N'Scheduling with Slack Time.', N'31-41', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (609, N'The Average Number of Registers Needed to Evaluate a Binary Tree Optimally.', N'363-372', 57)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (610, N'safeDpi: a language for controlling mobile code.', N'227-290', 49)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (611, N'Axiomatizing the Algebra of Net Computations and Processes.', N'641-667', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (612, N'RETRPROV  A System that Looks for Axioms.', N'759-780', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (613, N'Picture deformation.', N'1-31', 27)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (614, N'On the Finite Degree of Ambiguity of Finite Tree Automata.', N'527-542', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (615, N'Binary Search Trees of Almost Optimal Height.', N'165-178', 66)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (616, N'Iterative Arrays with Direct Central Control.', N'177-192', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (617, N'Solving fSAT using vertex covers.', N'509-523', 47)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (618, N'A functional approach for temporal ^f215; modal logics.', N'71-96', 58)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (619, N'An Easily Testable Optimal-Time VLSI-Multiplier.', N'363-380', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (620, N'Critical Comments on the Programming Language Pascal.', N'47-57', 67)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (621, N'An exact subexponential-time lattice algorithm for Asian options.', N'23-39', 47)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (622, N'Remarks on R. D. Tennent   s Language Design Methods Based on Semantic Principles: Algol 68  A Language Designed Using Semantic Principles.', N'83-98', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (623, N'Minimale und m-minimale Variablenmengen fr partielle Boole   sche Funktionen', N'172-179', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (624, N'Schnelle Berechnung von Kettenbruchentwicklungen.', N'139-144', 54)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (625, N'Regular autodense languages.', N'467-477', 27)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (626, N'Sound and Complete Hoare-like Calculi Based on Copy Rules.', N'161-197', 29)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (627, N'Elementary Transition Systems and Refinement.', N'555-578', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (628, N'The Network Complexity and the Turing Machine Complexity of Finite Functions.', N'95-107', 44)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (629, N'Inference rules for proving the equivalence of recursive procedures.', N'403-439', 27)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (630, N'The Semigroups of Linearly Realizable Finite Automata II.', N'369-390', 6)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (631, N'Providing view synchrony for group communication services.', N'159-210', 65)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (632, N'Receptive Process Theory.', N'17-31', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (633, N'Letter from the Managing Editor.', N'1-2', 31)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (634, N'Incremental Evaluation for Attribute Grammars with Unrestricted Movement Between Tree Modifications.', N'155-178', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (635, N'Addenda and Corrigenda: Formal Semantics of a Class of High-Level Primitives for Coordinating Concurrent Processes', N'325', 2)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (636, N'On-Way Multihead Deterministic Finite Automata.', N'377-384', 43)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (637, N'The Expected Behaviour of B+-Trees.', N'439-471', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (638, N'Precedence Technique is not Worse than SLR(1).', N'361-392', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (639, N'Refinement of actions and equivalence notions for concurrent systems.', N'229-327', 51)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (640, N'Standard Model Semantics for DSL A Data Type Specification Language.', N'97-113', 43)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (641, N'Step Failures Semantics and a Complete Proof System.', N'125-156', 63)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (642, N'Deleting the Root of a Heap.', N'245-265', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (643, N'Polytime Model Checking for Timed Probabilistic Computation Tree Logic.', N'645-664', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (644, N'MOMI: a calculus for mobile mixins.', N'143-190', 49)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (645, N'Forgetting Automata and Context-Free Languages.', N'409-420', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (646, N'A Sound and Relatively * Complete Hoare-Logic for a Language With Higher Type Procedures.', N'59-101', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (647, N'A life dedicated to informatics: an obituary for Prof. Friedrich L. Bauer.', N'299-301', 31)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (648, N'Rational Index of Vector Addition Systems Languages.', N'503-525', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (649, N'Dijkstra-Scholten Predicate Calculus: Concepts and Misconceptions.', N'1007-1036', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (650, N'Management of interval probabilistic data.', N'93-130', 27)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (651, N'Inner Loops in Flowgraphs and Code Optimization.', N'143-155', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (652, N'Iteration of Transformation Passes over Attributed Program Trees.', N'1-40', 63)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (653, N'Node Flows in Graphs with Conservative Flow.', N'37-41', 67)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (654, N'Charting the completeness frontier of inference systems for multivalued dependencies.', N'565-591', 27)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (655, N'Varepsilon-Productions in Context-Free Grammars.', N'303-308', 29)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (656, N'On the Self Contained Modelling of DB/DC Systems.', N'227-247', 44)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (657, N'Two-Symbol DOS Systems Generating Regular Languages.', N'133-142', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (658, N'A construction of distributed reference counting.', N'563-595', 51)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (659, N'A criterion for atomicity revisited.', N'123-151', 47)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (660, N'An Analytic Storage Allocation Model.', N'101-122', 24)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (661, N'A Model for Data Structures and Its Applications. I.', N'26-34', 54)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (662, N'Performance Predictions for Extended Paged Memories.', N'1-13', 54)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (663, N'General quantitative specification theories with modal transition systems.', N'261-295', 17)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (664, N'Scattered context grammars that erase nonterminals in a generalized  k  -limited way.', N'593-608', 27)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (665, N'A quadratic speedup theorem for iterative arrays.', N'847-858', 16)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (666, N'Inductive Attribute Grammars: A Basis for Incremental Program Execution.', N'117-144', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (667, N'The Schorr-Waite Graph Marking Algorithm.', N'223-232', 57)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (668, N'Multi-letter quantum finite automata: decidability of the equivalence and minimization of states.', N'271-290', 3)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (669, N'Continuous Reductions Among Combinatorial Optimization Problems.', N'771-785', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (670, N'Transposition of Large Tabular Data Structures with Applications to Physical Database Organization.', N'13-33', 43)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (671, N'Finding a Maximum Matching in a Permutation Graph.', N'779-792', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (672, N'A Hierarchy Theorem for Multihead Stack-Counter Automata.', N'63-67', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (673, N'Reasoning about probabilistic sequential programs in a probabilistic logic.', N'315-389', 58)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (674, N'On the hierarchy of distribution-sensitive properties for data structures.', N'289-295', 10)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (675, N'A Proof Method for Cyclic Programs.', N'133-157', 34)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (676, N'General Properties of Derivational Complexity.', N'267-283', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (677, N'A note on the factorization conjecture.', N'381-402', 10)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (678, N'On Some Variants of Post   s Correspondence Problem.', N'357-367', 43)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (679, N'The Virtual Feedback Problem in Hierarchical Representations of Combinational Circuits.', N'463-476', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (680, N'Describing an Algorithm by Hopcroft', N'97-109', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (681, N'Reexecution in Abstract Interpretation of Prolog.', N'209-270', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (682, N'Recognition and Selection of Idioms for Code Optimization.', N'327-348', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (683, N'Depth-First K-Trees and Critical Path Analysis.', N'325-346', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (684, N'ber Separatoren in planaren Graphen.', N'87-106', 25)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (685, N'An Optimality Theory of Concurrency Control for Databases.', N'1-11', 43)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (686, N'Extended Linear Macro Grammars  Iteration Grammars  and Register Programs.', N'259-285', 57)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (687, N'Eliminating Unit Reductions from   LR(k)   Parsers Using Minimum Contexts.', N'447-470', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (688, N'Context-Free Grammars With Selective Rewriting.', N'257-268', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (689, N'Using Graph Coloring in an Algebraic Compiler.', N'191-209', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (690, N'A Characterisation of Meet and Join Respecting Pre-Orders and Congruences on Finite Lattices.', N'773-785', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (691, N'Extended Directed Graphs  a Formalism for Structured Data and Data Structures.', N'37-59', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (692, N'Hybridization methods for the analysis of nonlinear systems.', N'451-476', 48)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (693, N'A Characterization of Set Representable Labeled Partial 2-Structures Through Decompositions.', N'83-94', 66)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (694, N'On Generating Database Schemes Bounded or Constant-time-maintainable by Extensibility.', N'475-496', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (695, N'Containment and disjointedness in partitioned normal form relations.', N'325-342', 16)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (696, N'Bounds on Algorithms for String Generation.', N'311-319', 18)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (697, N'Decidability of Model Checking for Infinite-State Concurrent Systems.', N'85-107', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (698, N'Object type constructors.', N'367-408', 16)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (699, N'On the incremental growth and shrinkage of LR goto-graphs.', N'419-447', 17)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (700, N'Avoidable binary patterns in partial words.', N'25-41', 3)
GO
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (701, N'On Slender 0L Languages over the Binary Alphabet.', N'805-815', 21)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (702, N'Trial and Error. A New Approach to Space-Bounded Learning.', N'621-630', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (703, N'Unavoidable Binary Patterns.', N'385-395', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (704, N'Visibly rational expressions.', N'25-49', 17)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (705, N'Program reversals for evolutions with non-uniform step costs.', N'235-263', 62)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (706, N'Testing Attribute Grammars for Circularity.', N'185-192', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (707, N'On the Complexity of Formal Grammars.', N'171-181', 34)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (708, N'The Log-Structured Merge-Tree (LSM-Tree).', N'351-385', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (709, N'Optimal Multiway Search Trees for Variable Size Keys.', N'47-60', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (710, N'An Experience in Proving Regular Networks of Processes by Modular Model Checking.', N'523-543', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (711, N'A theory of ultimately periodic languages and automata with an application to time granularity.', N'331-360', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (712, N'Querying Fragmented Relations in a Distributed Database.', N'125-138', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (713, N'The Formal Power of One-Visit Attribute Grammars.', N'275-302', 29)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (714, N'Stacks  Queues  and Deques with Order-Statistic Operations.', N'395-414', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (715, N'On two Families of Forests.', N'235-260', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (716, N'Probabilistic Models of Computer Systems - Part I (Exact Results).', N'35-60', 44)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (717, N'On Bounds of Response Time Performance Achievable by Multiclass Single-Server Queues.', N'629-650', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (718, N'Sequential Method in Propositional Dynamic Logic.', N'377-400', 38)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (719, N'Speeding up Dynamic Transitive Closure for Bounded Degree Graphs.', N'369-384', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (720, N'Scheduling Saves in Fault-Tolerant Computations.', N'409-423', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (721, N'The Equivalence of Horn and Network Complexity for Boolean Functions.', N'303-307', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (722, N'Modal algebra and Petri nets.', N'109-132', 31)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (723, N'Semantic Foundations of 4NF in Relational Database Design.', N'173-213', 59)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (724, N'Iterative Weighted Finite Transductions.', N'681-703', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (725, N'Context-Free Hypergraph Grammars have the Same Term-Generating Power as Attribute Grammars.', N'161-210', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (726, N'Pipelines: Modelling a software architecture through relations.', N'37-79', 65)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (727, N'Satisfiability of Co-Nested Formulas.', N'397-403', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (728, N'Graph Theoretic Closure Properties of the Family of Boundary NLC Graph Languages.', N'289-309', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (729, N'CCS: It   s not fair! - Fair schedulers cannot be implemented in CCS-like languages even under progress and certain fairness assumptions.', N'175-205', 31)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (730, N'An Analysis of a Contention Resolution Algorithm: Another Approach.', N'173-190', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (731, N'A Markov modulated multi-server queue with negative customers - The MM CPP/GE/c/L G-queue.', N'881-919', 51)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (732, N'One-sided random context grammars.', N'149-163', 3)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (733, N'Regenerative Simulation of Response Times in Networks of Queues: Statistical Efficiency.', N'347-363', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (734, N'Formal properties of XML grammars and languages.', N'649-671', 16)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (735, N'The LBA-Problem and the Deterministic Tape Complexity of Two-Way One-Counter Languages over a One-Letter Alphabet.', N'371-382', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (736, N'Static Main Storage Packing Problems.', N'355-376', 34)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (737, N'Adding a path connectedness operator to FO+poly (linear).', N'621-648', 16)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (738, N'Independent Database Schemes under Functional and Inclusion Dependencies.', N'777-779', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (739, N'On the power of enzymatic numerical P systems.', N'395-412', 7)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (740, N'A Compositional Dataflow Semantics for Petri Nets.', N'627-645', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (741, N'Modularity and Expressibility for Nets of Relations.', N'293-327', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (742, N'Modeling Data-Intensive Reactive Systems with Relational Transition Systems.', N'203-231', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (743, N'Two-dimensional packing with conflicts.', N'155-175', 27)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (744, N'Proof of Termination within a Weak Logic of Programs.', N'21-36', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (745, N'SLR(1) and LALR(1) Parsing for Unrestricted Grammars.', N'191-209', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (746, N'On the tree-transformation power of XSLT.', N'371-393', 48)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (747, N'On the Response Time Distribution in a Discrete Round-Robin Queue.', N'57-62', 29)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (748, N'On the Efficient Implementation of Conditional Critical Regions and the Construction of Monitors.', N'227-249', 19)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (749, N'New Lower Bounds on the Formula Size of Boolean Functions.', N'183-194', 43)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (750, N'Automating the Knuth Bendix Ordering.', N'95-119', 66)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (751, N'On the Semantics of Polymorphism.', N'159-170', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (752, N'Proving and Applying Program Transformations Expressed with Second-Order Patterns.', N'31-55', 14)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (753, N'LR Parsing for Affix Grammars.', N'283-300', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (754, N'On Partitions and Presortedness of Sequences.', N'267-280', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (755, N'HDTOL Matching of Computations of Multitape Automata.', N'179-191', 63)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (756, N'Dynamic Multi-Dimensional Data Structures Based on Quad- and   K - D   Trees.', N'267-285', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (757, N'Quantum loop programs.', N'221-250', 46)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (758, N'Predicative Methodology.', N'487-505', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (759, N'Proving Programs Correct through Refinement.', N'121-132', 34)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (760, N'Analysis of a Prioritized CSMA Protocol Based on Staggered Delays.', N'299-324', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (761, N'On  2 - ^f957; 2-products of automata.', N'397-408', 3)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (762, N'On a New Approach to Representation Independent Data Classes.', N'315-324', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (763, N'Judgmental subtyping systems with intersection types and modal types.', N'359-380', 10)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (764, N'A Logic for the Specification and Proof of Regular Controllable Processes of CCS.', N'507-527', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (765, N'Oprations de Cylindre et applications squentielles gauches inverses.', N'241-258', 57)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (766, N'Denotational fixed-point semantics for constructive scheduling of synchronous concurrency.', N'393-442', 31)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (767, N'Embedding linear orders in grids.', N'419-428', 56)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (768, N'Deadlock-Freedom in Resource Contentions.', N'585-598', 68)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (769, N'A Note on Degrees of Context-Sensitivity.', N'387-394', 35)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (770, N'Petri nets with name creation for transient secure association.', N'403-436', 10)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (771, N'The weakest specifunction.', N'383-414', 61)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (772, N'Interpretation and Reduction of Attribute Grammars.', N'115-150', 43)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (773, N'Optimum Checkpoints with Age Dependent Failures.', N'519-531', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (774, N'Deterministic Asynchronous Automata for Infinite Traces.', N'379-397', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (775, N'Parallel Language Recognition in Constant Time by Cellular Automata.', N'397-407', 43)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (776, N'An Algebra for Process Creation.', N'303-334', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (777, N'Erratum to: Avoidable binary patterns in partial words.', N'53-54', 7)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (778, N'Nested Satisfiability.', N'1-6', 66)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (779, N'Ideal preemptive schedules on two processors.', N'597-612', 58)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (780, N'The Formal Development of a Parallel Program Performing LU-Decomposition.', N'1-17', 40)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (781, N'Context-free Text Grammars.', N'161-206', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (782, N'Graph Complexity.', N'515-535', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (783, N'Relating Confluence  Innermost-Confluence and Outermost-Confluence Properties of Term Rewriting Systems.', N'595-606', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (784, N'A Decomposable Model of Program Paging Behaviour.', N'251-275', 19)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (785, N'Analysis of range search for random k-d trees.', N'355-383', 51)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (786, N'A Regularity Test for Dual Bordered   OS   Systems.', N'245-253', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (787, N'Parallel LL parsing.', N'1-21', 47)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (788, N'Generalized Theory of Serializability.', N'105-119', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (789, N'Formal Semantics of a Class of High-Level Primitives for Coordinating Concurrent Processes', N'297-332', 35)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (790, N'Greed in Resource Scheduling.', N'755-775', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (791, N'Unbalanced Multiway Trees Improved by Partial Expansions.', N'443-460', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (792, N'Algebraic reasoning for probabilistic action systems and while-loops.', N'321-382', 27)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (793, N'Product Properties and Their Direct Verification.', N'329-344', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (794, N'Trading polarizations for labels in P systems with active membranes.', N'111-144', 64)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (795, N'A Transformation Method for Dynamic-Sized Tabulation.', N'93-115', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (796, N'General Purpose Schedulers for Database Systems.', N'195-220', 25)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (797, N'Erratum: Maximum Entropy Two-Station Cyclic Queues with Multiple General Servers.', N'787', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (798, N'A New Explanation of the Glitch Phenomenon.', N'297-309', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (799, N'On-Line Multiversion Database Concurrency Control.', N'121-160', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (800, N'Two-tier relaxed heaps.', N'193-210', 27)
GO
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (801, N'Fooling a Two-Way Nondeterministic Multihead Automaton with Reversal Number Restriction.', N'589-594', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (802, N'Fairness of Actions in System Computations.', N'73-130', 9)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (803, N'Representation of Graphs.', N'215-219', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (804, N'Dynamic LL(k) Parsing.', N'267-289', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (805, N'Fundamentals of control flow in workflows.', N'143-209', 58)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (806, N'A distributed QoS-Aware multicast routing protocol.', N'211-233', 65)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (807, N'Strategy synthesis for multi-dimensional quantitative objectives.', N'129-163', 17)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (808, N'Analysis of a Service Facility with Periodic Checkpointing.', N'67-81', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (809, N'A decomposition theorem for finite persistent transition systems.', N'237-254', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (810, N'Weakly Independent Database Schemes.', N'1-22', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (811, N'On the closure of pattern expressions languages under intersection with regular languages.', N'193-207', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (812, N'The Effect of Fixed-Length Record Implementation on File System Response.', N'399-409', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (813, N'LR-Parsing of Extended Context Free Grammars.', N'61-73', 44)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (814, N'Die Zeitkomplexitt des Normalisierungsproblems bei kontextsensitiven Grammatiken.', N'309-329', 34)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (815, N'Resource Finding in Store-and-Forward Networks.', N'657-680', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (816, N'Evaluation des Performances d   un Algorithme de Controle de la Cohrence d   une Base de Donnes Rpartie.', N'39-62', 25)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (817, N'Generalized Recursive Data Structures.', N'95-108', 38)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (818, N'An Incremental Primal Sieve.', N'119-125', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (819, N'Transformational Methods and their Application to Complexity Problems.', N'95-108', 19)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (820, N'Limit laws for terminal nodes in random circuits with restricted fan-out: a family of graphs generalizing binary search trees.', N'99-110', 64)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (821, N'A. Nico Habermann 1932-1993.', N'1-3', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (822, N'Using Circular Programs to Eliminate Multiple Traversals of Data.', N'239-250', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (823, N'Process algebra with action dependencies.', N'155-234', 70)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (824, N'The Complexity of Combinatorial Problems with Succinct Input Representation.', N'325-356', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (825, N'Free Choice Systems Have Home States.', N'89-100', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (826, N'On the Sequential Nature of Interprocedural Program-Analysis Problems.', N'739-757', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (827, N'The size of random bucket trees via urn models.', N'813-838', 16)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (828, N'Throughput of a Satellite Channel Communication.', N'1-14', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (829, N'Choosing a Storage Schema.', N'297-319', 24)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (830, N'Normal Forms for Context-Sensitive Grammars.', N'59-73', 67)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (831, N'The class Steiner minimal tree problem: a lower bound and test problem generation.', N'193-211', 69)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (832, N'Job Scheduling Guaranteeing Reasonable Turn-Around Times.', N'1-11', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (833, N'Metatheorems for Decision Problems on Hyperedge Replacement Graph Languages.', N'657-677', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (834, N'Synchronisationsgraphen', N'143-161', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (835, N'Corrections to ``A Synthesis of Several Sorting Algorithms       by J. Darlington.', N'19-23', 40)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (836, N'A Transformation System for Concurrent Processes.', N'1037-1073', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (837, N'Rewrite Systems on a Lattice of Types.', N'149-169', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (838, N'Parallel Approximation Schemes for Subset Sum and Knapsack Problems.', N'417-432', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (839, N'A New Approach to Parallel Computing.', N'1-13', 44)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (840, N'An axiomatization of graphs.', N'19-61', 64)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (841, N'Detecting Morphic Images of a Word on the Rank of a Pattern.', N'477-489', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (842, N'Decision problems for pushdown threads.', N'75-90', 47)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (843, N'On Problems with Short Certificates.', N'479-502', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (844, N'Duality in Specification Languages: A Lattice-Theoretical Approach.', N'583-625', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (845, N'Performance Analysis of Parallel Programs Based on Directed Acyclic Graphs.', N'411-428', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (846, N'The variance of the height of digital search trees.', N'261-276', 16)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (847, N'Problematic Features of Programming Languages: A Situational-Calculus Approach.', N'371-426', 29)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (848, N'Observable liveness of Petri nets.', N'153-174', 31)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (849, N'Kinded Type Inference for Parametric Overloading.', N'21-68', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (850, N'Sufficient-Completeness  Ground-Reducibility and their Complexity.', N'311-350', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (851, N'Speeding up Circularity Tests for Attribute Grammars.', N'375-391', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (852, N'A Note on Classes of Complements and the LBA Problem.', N'169-173', 6)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (853, N'Conjunctive grammars and alternating pushdown automata.', N'175-197', 10)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (854, N'Towards a Theory of Consistency Enforcement.', N'97-141', 59)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (855, N'Prefix-primitive annihilators of languages under some operations.', N'281-293', 7)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (856, N'Heuristics for Parallel Machine Scheduling with Delivery Times.', N'503-512', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (857, N'A Set-Theoretic Semantics for Clear.', N'443-472', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (858, N'Lower Bounds on Space Complexity for Contextfree Recognition.', N'33-61', 38)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (859, N'Some Remarks on Boolean Sums.', N'371-375', 38)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (860, N'Accepting splicing systems with permitting and forbidding words.', N'1-14', 10)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (861, N'Causality for Debugging Mobile Agents.', N'335-374', 59)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (862, N'An Improved Complexity Hierarchy on the Depth of Boolean Functions.', N'147-152', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (863, N'Proving Finiteness of CCS Processes by Non-Standard Semantics.', N'55-80', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (864, N'Nonterminal complexity of one-sided random context grammars.', N'55-68', 7)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (865, N'On Sufficient-Completeness and Related Properties of Term Rewriting Systems.', N'395-415', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (866, N'On the Relationship of Minimum and Optimum Covers for a Set of Functional Dependencies.', N'143-158', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (867, N'Optimum Binary Search Trees.', N'14-25', 54)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (868, N'Simulation Output Analysis for Local Area Computer Networks.', N'321-338', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (869, N'The Temporal Logic of Branching Time.', N'207-226', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (870, N'On regular temporal logics with past.', N'251-277', 46)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (871, N'Generating Binary Trees of Bounded Height.', N'529-544', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (872, N'Direction Controlled Programmed Grammars.', N'242-252', 18)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (873, N'Proof Theory for Exception Handling in a Tasking Environment.', N'7-41', 66)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (874, N'Space Efficient Algorithms for Some Graph Theoretical Problems.', N'411-423', 1)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (875, N'Partial Parametrization Eliminates Multiple Traversals of Data Structures.', N'57-77', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (876, N'Grundlagen einer Theorie der Datenstrukturen und Zugriffssysteme. Teil II: Zugriffssysteme.', N'299-310', 42)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (877, N'On stateless deterministic restarting automata.', N'391-412', 46)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (878, N'Minimal Coverings for Incompletely Specified Sequential Machines.', N'663-678', 53)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (879, N'Deriving very Efficient Algorithms for Evaluating Linear Recurrence Relations Using the Program Transformation Technique.', N'181-206', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (880, N'Improved Time and Space Bounds for Boolean Matrix Multiplication.', N'61-77', 14)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (881, N'Postorder Trees and Eulerian Numbers.', N'703-712', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (882, N'Transformational Design of Real-Time Systems. Part II: From Program Specifications to Programs.', N'67-96', 59)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (883, N'The Reliability of Life-Critical Computer Systems.', N'621-642', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (884, N'Normal Form Approach to Compiler Design.', N'701-739', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (885, N'A Discrete-Time Round-Robin Queue with Bernoulli Input and General Arithmetic Service Time Distributions.', N'251-263', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (886, N'On Languages Accepted by Space-Bounded Oracle Machines.', N'177-185', 38)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (887, N'Grammarforms and Grammarhomomorphisms.', N'75-93', 44)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (888, N'Reasoning with Examples: Propositional Formulae and Database Dependencies.', N'267-286', 59)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (889, N'Semantics analysis through elementary meanings.', N'1-19', 69)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (890, N'A new Lower Bound on the Monotone Network Complexity of Boolean Sums.', N'109-114', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (891, N'Some Techniques for Geometric Searching with Implicit Set Representations.', N'565-582', 4)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (892, N'The Nearest Common Ancestor in a Dynamic Tree.', N'37-54', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (893, N'Local Hausdorff Dimension.', N'491-507', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (894, N'A general procedure to check conjunctive query containment.', N'489-529', 16)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (895, N'The Complexity of Drawing Trees Nicely.', N'377-392', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (896, N'Two Impossibility Theorems on Behaviour Specification of Abstract Data Types.', N'595-621', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (897, N'Supercube: An Optimally Fault Tolerant Network Architecture.', N'741-748', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (898, N'On the Rational Subsets of the Free Group.', N'281-296', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (899, N'More Comments on the Programming Language Pascal.', N'231-243', 42)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (900, N'On Alternation II. A Graph Theoretic Approach to Determinism Versus Nondeterminism.', N'391-403', 25)
GO
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (901, N'Iterated GSMs and Co-CFL.', N'749-769', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (902, N'Timing and Causality in Process Algebra.', N'317-350', 13)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (903, N'Semantic Routines and   LR(k)   Parsers.', N'299-315', 25)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (904, N'Well Quasi-Orders and Regular Languages.', N'539-557', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (905, N'Bounds on the Parallel Evaluation of Arithmetic Expressions Using Associativity and Commutativity.', N'203-216', 24)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (906, N'Adding inclusion dependencies to an object-oriented data model with uniqueness constraints.', N'391-449', 58)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (907, N'In Memoriam: Andrei Petrovich Ershov.', N'193-194', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (908, N'Optimal Search Trees Using Two-Way Key Comparisons.', N'729-740', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (909, N'Hierarchical Program Specification and Verification - a Many-sorted Logical Approach.', N'135-155', 25)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (910, N'Synthesis and reengineering of persistent systems.', N'35-60', 31)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (911, N'Some kinds of primitive and non-primitive words.', N'339-346', 17)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (912, N'An Endogenous Priority Model for Load Control in Combined Batch-Interactive Computer Systems.', N'153-166', 44)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (913, N'Alan J. Perlis 1922-1990.', N'409-410', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (914, N'Drawing Plane Graphs Nicely.', N'187-201', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (915, N'Automata-based verification of programs with tree updates.', N'1-31', 46)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (916, N'Universal Asynchronous Iterative Arrays of Mealy Automata.', N'269-285', 45)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (917, N'Testing Bag-Containment of Conjunctive Queries.', N'557-578', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (918, N'L-Systems and Mutually Resurcive Function Systems.', N'279-302', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (919, N'Analysis of Tree Algorithms for the Simulation Event List.', N'15-33', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (920, N'On the Valuedness of Finite Transducers.', N'749-780', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (921, N'The Ultimate Equivalence Problem for DOL Systems.', N'79-84', 6)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (922, N'The Algebraic Specification of Abstract Data Types.', N'27-52', 6)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (923, N'Amortized Constant Relaxed Rebalancing Using Standard Rotations.', N'859-874', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (924, N'Inferring Multivalued Dependencies From Functional and Join Dependencies.', N'305-324', 43)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (925, N'The Path Length of Random Skip Lists.', N'775-792', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (926, N'Context-Free Languages over Infinite Alphabets.', N'245-267', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (927, N'Language Design Methods Based on Semantic Principles.', N'97-112', 23)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (928, N'How to allocate review tasks for robust ranking.', N'325-345', 46)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (929, N'An Alternative Approach to the Improvement of  LR(k)  Parsers.', N'277-296', 19)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (930, N'Hirarchie et fermeture de certaines classes de tag-systmes.', N'179-196', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (931, N'Unsafe Operations in B-Trees.', N'421-438', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (932, N'Even faster generalized LR parsing.', N'633-651', 51)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (933, N'Toward Formal Development of Programs from Algebraic Specifications: Parameterisation Revisited.', N'689-736', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (934, N'On Specification of Multiprocessor Computing.', N'685-696', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (935, N'On the Definition of ELR(k) and ELL(k) Grammars.', N'169-176', 57)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (936, N'Elements of Finite Order for Finite Weight-Reducing and Confluent Thue Systems.', N'573-591', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (937, N'A Priority Queue With Interruptions of Service Permitted After a Time Quantum.', N'241-251', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (938, N'A Logic Covering Undefinedness in Program Proofs.', N'251-269', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (939, N'A semantic approach to optimize linear datalog programs.', N'341-370', 9)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (940, N'Regenerative Simulation of Response Times in Networks of Queues with Multiple Job Types.', N'159-175', 38)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (941, N'Object Inheritance Beyond Subtyping.', N'5-26', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (942, N'Generalized Binary Split Trees.', N'113-123', 60)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (943, N'Efficient LR(1) Parsers.', N'12-39', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (944, N'Referential Transparency  Definiteness and Unfoldability.', N'505-517', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (945, N'The fibers and range of reduction graphs in ciliates.', N'383-402', 27)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (946, N'Machine Scheduling with Availability Constraints.', N'795-811', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (947, N'Applications of the Theory of Records in the Study of Random Trees.', N'123-130', 40)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (948, N'On the Performance Evaluation of Extendible Hashing and Trie Searching.', N'345-369', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (949, N'Modularity and Reusability in Attribute Grammars.', N'601-627', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (950, N'Every Binary Pattern of Length Six is Avoidable on the Two-Letter Alphabet.', N'95-107', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (951, N'On the complexity of the identification problem in Hamming spaces.', N'839-845', 16)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (952, N'Testing for refinement in  Circus .', N'97-147', 3)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (953, N'Randomization adaptive self-stabilization.', N'313-323', 46)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (954, N'A Fast Algorithm for Steiner Trees.', N'141-145', 30)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (955, N'Context Free Derivations on Word Monoids.', N'781-786', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (956, N'On Scheduling Tasks with Exponential Service Times and In-Tree Precedence Constraints.', N'139-148', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (957, N'An Incremental Mechanical Development of Systolic Solutions to the Algebraic Path Problem.', N'97-124', 63)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (958, N'On the Use of History Variables.', N'15-30', 29)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (959, N'Abstractions of data types.', N'639-671', 56)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (960, N'Multipass Precedence Analysis.', N'77-85', 42)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (961, N'An O(n) Algorithm for Computing the Set of Available Expressions of D-Charts.', N'361-364', 19)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (962, N'Machine structure oriented control code logic.', N'375-401', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (963, N'On Gurevich   s theorem on sequential algorithms.', N'273-305', 58)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (964, N'The Instability of Self-Stabilization.', N'697-724', 52)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (965, N'Sorting Multisets Stably in Minimum Space.', N'301-313', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (966, N'Information Theoretic Analysis for a General Queueing System at Equilibrium with Application to Queues in Tandem.', N'657-678', 15)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (967, N'On Time Computability of Functions in One-Way Cellular Automata.', N'329-352', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (968, N'Contextual Rewriting as a Sound and Complete Proof Method for Conditional LOG-Specifications.', N'147-180', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (969, N'IEH Graphs. A Novel Generalization of Hypercube Graphs.', N'597-609', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (970, N'A Survey of Stream Processing.', N'491-541', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (971, N'An   O(V5/3 E2/3)   Algorithm for the Maximal Flow Problem.', N'221-242', 25)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (972, N'The Clean Termination of Pascal Programs.', N'195-210', 57)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (973, N'A Longest Common Subsequence Algorithm Suitable for Similar Text Strings.', N'171-179', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (974, N'On Sentential Forms of Context-Free Grammars.', N'40-49', 8)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (975, N'Fundamentals of Modelling Concurrency Using Discrete Relational Structures.', N'367-388', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (976, N'Refinement of Fair Action Systems.', N'131-165', 50)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (977, N'Special Factors  Periodicity  and an Application to Sturmian Words.', N'983-1006', 21)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (978, N'Correctness proof of a database replication protocol under the perspective of the I/O automaton model.', N'297-330', 22)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (979, N'WCS-Analysis of the Context-Sensitive.', N'359-371', 42)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (980, N'Affine Relationships Among Variables of a Program.', N'133-151', 19)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (981, N'Easy Sets and Hard Certificate Schemes.', N'859-879', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (982, N'Effect of Data Representation on Cost of Sparse Matrix Operations.', N'361-394', 2)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (983, N'Tree Automata for Code Selection.', N'741-760', 37)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (984, N'Hierarchy Theorems for Two-Way Finite State Transducers.', N'80-101', 14)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (985, N'A Balanced Search Tree with   O   (1) Worst-case Update Time.', N'269-277', 40)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (986, N'On Counting and Approximation.', N'363-379', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (987, N'Syntactic Complexity of Scattered Context Grammars.', N'285-298', 20)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (988, N'Axioms for Total Correctness.', N'61-71', 39)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (989, N'Optimal algorithms for semi-online preemptive scheduling problems on two uniform machines.', N'367-383', 62)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (990, N'Memory Fragmentation in Buddy Methods for Dynamic Storage Allocation.', N'107-117', 25)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (991, N'Pascal-Clarifications and Recommended Extensions.', N'73-94', 38)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (992, N'Contributions to the Semantics of Logic Perpetual Processes.', N'691-711', 5)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (993, N'An Analysis of two Related Loop-free Algorithms for Generating Integer Partitions.', N'237-252', 29)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (994, N'Locality Based Semantics for Process Algebras.', N'291-324', 33)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (995, N'An Optimal Algorithm for Decomposing a Window into Maximal Quadtree Blocks.', N'257-266', 59)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (996, N'A Unified View of the Complexity of Evaluation and Interpolation.', N'123-133', 24)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (997, N'The Analysis of Heuristics for Search Trees.', N'233-248', 36)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (998, N'Communication for Alternating Machines.', N'425-441', 41)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (999, N'Complexity of the Word Problem for Commutative Semigroups of Fixed Dimension.', N'421-432', 28)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (1000, N'Minimal Communication Cost Software Construction in the Internet Environment.', N'579-595', 33)
GO
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (1001, N'Self-embedded context-free grammars with regular counterparts.', N'349-365', 62)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (1002, N'Editorial: Hybrid Systems.', N'449-450', 48)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (1003, N'Single Machine Flow-Time Scheduling With a Single Breakdown.', N'679-696', 26)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (1004, N'A Relational Approach to the Design of Deterministic Programs.', N'315-328', 11)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (1005, N'An Optimal Algorithm for Solving the Searchlight Guarding Problem on Weighted Two-Terminal Series-Parallel Graphs.', N'143-172', 59)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (1006, N'Partial Abstract Types.', N'47-64', 32)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (1007, N'Some Order Dimension Bounds for Communication Complexity Problems.', N'593-601', 12)
INSERT [dbo].[articles] ([_id], [title], [pgno], [mvid]) VALUES (1009, N'On the Worst Case Performance of Buddy Systems.', N'451-473', 28)
SET IDENTITY_INSERT [dbo].[AUTHOR] ON 

INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (1, N'Houda', N'Abbad', N'houda.abbad@lycos.com')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (2, N'Hideo', N'Bannai', N'bannai@inf.kyushu-u.ac.jp')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (3, N'Mutlu', N'Beyazit', N'beyazit@adt.upb.de')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (4, N'Francine', N'Blanchet-Sadri', N'blanchet@uncg.edu')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (5, N'Janusz', N'Brzozowski', N'brzozo@uwaterloo.ca')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (6, N'Cezar', N'Campeanu', N'cezar@sun11.math.upei.ca')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (7, N'Mathieu', N'Caralp', N'mathieu.caralp@lif.univ-mrs.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (8, N'Pascal', N'Caron', N'pascal.caron@univ-rouen.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (9, N'Jean-Marc', N'Champarnaud', N'Jean-Marc.Champarnaud@univ-rouen.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (10, N'Dmitry', N'Chistikov', N'dch@mpi-sws.org')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (11, N'Christian', N'Choffrut', N'Christian.Choffrut@liafa.jussieu.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (12, N'Stefano', N'Crespi-Reghizzi', N'stefano.crespireghizzi@polimi.it')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (13, N'Denis', N'Debarbieux', N'denis.debarbieux@inria.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (14, N'Pierpaolo', N'Degano', N'degano@di.unipi.it')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (15, N'Akim', N'Demaille', N'akim.demaille@gmail.com')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (16, N'Michael', N'Domaratzki', N'mdomarat@cs.umanitoba.ca')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (17, N'Frank', N'Drewes', N'drewes@cs.umu.se')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (18, N'Alexandre', N'Duret-Lutz', N'adl@lrde.epita.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (19, N'Gianluigi', N'Ferrari', N'giangi@di.unipi.it')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (20, N'Olivier', N'Gauwin', N'olivier.gauwin@labri.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (21, N'Thomas', N'Genet', N'thomas.genet@irisa.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (22, N'Daniela', N'Genova', N'd.genova@unf.edu')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (23, N'Yuri', N'Gurevich', N'gurevich@microsoft.com')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (24, N'Yo-Sub', N'Han', N'emmous@cs.yonsei.ac.kr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (25, N'MdMahbubul', N'Hasan', N'shanto86@gmail.com')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (26, N'Pierre-Cyrille', N'Heam', N'pheam@femto-st.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (27, N'Fritz', N'Henglein', N'henglein@diku.dk')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (28, N'Jan', N'Holub', N'Jan.Holub@fit.cvut.cz')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (29, N'Markus', N'Holzer', N'holzer@informatik.uni-giessen.de')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (30, N'Tomohiro', N'I', N'tomohiro.i@inf.kyushu-u.ac.jp')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (31, N'A.S.M.Sohidull', N'Islam', N'sohansayed@gmail.com')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (32, N'Masami', N'Ito', N'ito@cc.kyoto-su.ac.jp')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (33, N'Sebastian', N'Jakobi', N'sebastian.jakobi@informatik.uni-giessen.de')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (34, N'Jozef', N'Jirasek', N'jozef.jirasek@upjs.sk')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (35, N'Oscar', N'Ibarra', N'ibarra@cs.ucsb.edu')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (36, N'Shunsuke', N'Inenaga', N'inenaga@inf.kyushu-u.ac.jp')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (37, N'Alois', N'Dreyfus', N'alois.dreyfus@femto-st.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (38, N'Galina', N'Jiraskova', N'jiraskov@saske.sk')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (39, N'Natasa', N'Jonoska', N'jonoska@math.usf.edu')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (40, N'Helmut', N'Jurgensen', N'hjj@csd.uwo.ca')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (41, N'Lila', N'Kari', N'lila@csd.uwo.ca')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (42, N'Andrzej', N'Kisielewicz', N'andrzej.kisielewicz@gmail.com')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (43, N'Sang-Ki', N'Ko', N'narame7@cs.yonsei.ac.kr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (44, N'Stavros', N'Konstantinidis', N's.konstantinidis@smu.ca')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (45, N'Olga', N'Kouchnarenko', N'olga.kouchnarenko@femto-st.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (46, N'Dexter', N'Kozen', N'kozen@cs.cornell.edu')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (47, N'Wener', N'Kuich', N'kuich@tuwien.ac.at')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (48, N'Natalia', N'Kushik', N'ngkushik@gmail.com')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (49, N'Martin', N'Kutrib', N'kutrib@informatik.uni-giessen.de')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (50, N'Tristan', N'LeGall', N'tristan.le-gall@cea.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (51, N'Axel', N'Legay', N'axel.legay@inria.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (52, N'Pawan', N'Lingras', N'pawan.lingras@smu.ca')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (53, N'Norma', N'Linney', N'norma.linney@smu.ca')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (54, N'Sylvain', N'Lombardy', N'Sylvain.Lombardy@labri.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (55, N'Eva', N'Maia', N'emaia@dcc.fc.up.pt')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (56, N'Rupak', N'Majumdar', N'rupak@mpi-sws.org')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (57, N'Andreas', N'Malcher', N'andreas.malcher@informatik.uni-giessen.de')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (58, N'Andreas', N'Maletti', N'andreas.maletti@ims.uni-stuttgart.de')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (59, N'Sebastian', N'Maneth', N'Sebastian.Maneth@gmail.com')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (60, N'Denis', N'Maurel', N'denis.maurel@univ-tours.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (61, N'Carlo', N'Mereghetti', N'mereghetti@di.unimi.it')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (62, N'Gianluca', N'Mezzetti', N'mezzetti@di.unipi.it')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (63, N'Nelma', N'Moreira', N'nam@dcc.fc.up.pt')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (64, N'Frantisek', N'Mraz', N'mraz@ksvi.ms.mff.cuni.cz')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (65, N'Paul', N'Muir', N'muir@smu.ca')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (66, N'Valerie', N'Murat', N'valerie.murat@inria.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (67, N'Joachim', N'Niehren', N'joachim.niehren@inria.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (68, N'Lasse', N'Nielsen', N'lasse.nielsen.dk@gmail.com')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (69, N'Takaaki', N'Nishimoto', N'a32b16c4@gmail.com')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (70, N'Friedrich', N'Otto', N'otto@theory.informatik.uni-kassel.de')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (71, N'Beatrice', N'Palano', N'palano@dsi.unimi.it')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (72, N'Giovanni', N'Pighizzini', N'pighizzini@dico.unimi.it')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (73, N'Daniel', N'Prusa', N'prusapa1@cmp.felk.cvut.cz')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (74, N'M.Sohel', N'Rahman', N'sohel.kcl@gmail.com')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (75, N'Ian', N'McQuillan', N'mcquillan@cs.usask.ca')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (76, N'George', N'Rahonis', N'grahonis@math.auth.gr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (77, N'Bala', N'Ravikumar', N'ravi@cs.sonoma.edu')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (78, N'Daniel', N'Reidenbach', N'D.Reidenbach@lboro.ac.uk')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (79, N'Rogerio', N'Reis', N'rvr@dcc.fc.up.pt')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (80, N'Pierre-Alain', N'Reynier', N'pierre-alain.reynier@lif.univ-mrs.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (81, N'Jacques', N'Sakarovitch', N'sakarovitch@telecom-paristech.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (82, N'Michel', N'Rigo', N'm.rigo@ulg.ac.be')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (83, N'Kai', N'Salomaa', N'ksalomaa@cs.queensu.ca')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (84, N'Pierluigi', N'San-Pietro', N'pierluigi.sanpietro@polimi.it')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (85, N'Porter', N'Scobey', N'porter.scobey@smu.ca')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (86, N'Tom', N'Sebastian', N'tom.sebastian@inria.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (87, N'Ayon', N'Sen', N'ayonsn@gmail.com')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (88, N'Geraud', N'Senizergues', N'ges@labri.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (89, N'Klaus', N'Sutner', N'sutner@cs.cmu.edu')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (90, N'Marek', N'Szykula', N'marek.esz@gmail.com')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (91, N'Masayuki', N'Takeda', N'takeda@inf.kyushu-u.ac.jp')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (92, N'Jean-Marc', N'Talbot', N'jean-marc.talbot@lif.univ-mrs.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (93, N'Marc', N'Tommasi', N'Marc.Tommasi@univ-lille3.fr')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (94, N'Mikhail', N'Volkov', N'Mikhail.Volkov@usu.ru')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (95, N'Bruce', N'Watson', N'bruce@fastar.org')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (96, N'Matthias', N'Wendlandt', N'matthias.wendlandt@informatik.uni-giessen.de')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (97, N'Hsu-Chun', N'Yen', N'yen@cc.ee.ntu.edu.tw')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (98, N'Nina', N'Yevtushenko', N'ninayevtushenko@yahoo.com')
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (99, N'Mohamed', N'Zergaoui', N'innovimax@gmail.com')
GO
INSERT [dbo].[AUTHOR] ([_id], [lname], [fname], [email]) VALUES (100, N'Alexander', N'Okhotin', N'alexander.okhotin@utu.fi')
SET IDENTITY_INSERT [dbo].[AUTHOR] OFF
SET IDENTITY_INSERT [dbo].[ITEM] ON 

INSERT [dbo].[ITEM] ([_id], [price]) VALUES (1, 10)
INSERT [dbo].[ITEM] ([_id], [price]) VALUES (2, 10.5)
INSERT [dbo].[ITEM] ([_id], [price]) VALUES (3, 10.9)
INSERT [dbo].[ITEM] ([_id], [price]) VALUES (4, 50)
INSERT [dbo].[ITEM] ([_id], [price]) VALUES (5, 50.5)
INSERT [dbo].[ITEM] ([_id], [price]) VALUES (6, 100)
INSERT [dbo].[ITEM] ([_id], [price]) VALUES (7, 100.5)
INSERT [dbo].[ITEM] ([_id], [price]) VALUES (8, 150)
SET IDENTITY_INSERT [dbo].[ITEM] OFF
SET IDENTITY_INSERT [dbo].[volume] ON 

INSERT [dbo].[volume] ([_id], [vno], [date]) VALUES (1, 4, CAST(1988 AS Numeric(4, 0)))
INSERT [dbo].[volume] ([_id], [vno], [date]) VALUES (2, 4, CAST(1977 AS Numeric(4, 0)))
INSERT [dbo].[volume] ([_id], [vno], [date]) VALUES (3, 4, CAST(2011 AS Numeric(4, 0)))
INSERT [dbo].[volume] ([_id], [vno], [date]) VALUES (4, 4, CAST(1987 AS Numeric(4, 0)))
INSERT [dbo].[volume] ([_id], [vno], [date]) VALUES (5, 4, CAST(1988 AS Numeric(4, 0)))
INSERT [dbo].[volume] ([_id], [vno], [date]) VALUES (6, 4, CAST(1978 AS Numeric(4, 0)))
INSERT [dbo].[volume] ([_id], [vno], [date]) VALUES (7, 4, CAST(2012 AS Numeric(4, 0)))
INSERT [dbo].[volume] ([_id], [vno], [date]) VALUES (8, 4, CAST(1973 AS Numeric(4, 0)))
SET IDENTITY_INSERT [dbo].[volume] OFF
/****** Object:  Index [art_id]    Script Date: 2018-10-09 10:45:20 PM ******/
CREATE NONCLUSTERED INDEX [art_id] ON [dbo].[article_author]
(
	[art_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [auth_id]    Script Date: 2018-10-09 10:45:20 PM ******/
CREATE NONCLUSTERED INDEX [auth_id] ON [dbo].[article_author]
(
	[auth_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [mvid]    Script Date: 2018-10-09 10:45:20 PM ******/
CREATE NONCLUSTERED INDEX [mvid] ON [dbo].[articles]
(
	[mvid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[article_author] ADD  DEFAULT (NULL) FOR [auth_id]
GO
ALTER TABLE [dbo].[article_author] ADD  DEFAULT (NULL) FOR [art_id]
GO
ALTER TABLE [dbo].[articles] ADD  CONSTRAINT [DF__articles__title__5441852A]  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[articles] ADD  CONSTRAINT [DF__articles__pgno__5535A963]  DEFAULT (NULL) FOR [pgno]
GO
ALTER TABLE [dbo].[articles] ADD  CONSTRAINT [DF__articles__mvid__5629CD9C]  DEFAULT (NULL) FOR [mvid]
GO
ALTER TABLE [dbo].[volume] ADD  DEFAULT (NULL) FOR [vno]
GO
ALTER TABLE [dbo].[volume] ADD  DEFAULT (NULL) FOR [date]
GO
ALTER TABLE [dbo].[article_author]  WITH CHECK ADD  CONSTRAINT [auth_id] FOREIGN KEY([auth_id])
REFERENCES [dbo].[AUTHOR] ([_id])
GO
ALTER TABLE [dbo].[article_author] CHECK CONSTRAINT [auth_id]
GO
ALTER TABLE [dbo].[contain]  WITH CHECK ADD  CONSTRAINT [magid] FOREIGN KEY([mid])
REFERENCES [dbo].[MAGAZINE] ([_id])
GO
ALTER TABLE [dbo].[contain] CHECK CONSTRAINT [magid]
GO
ALTER TABLE [dbo].[contain]  WITH CHECK ADD  CONSTRAINT [volid] FOREIGN KEY([mvid])
REFERENCES [dbo].[volume] ([_id])
GO
ALTER TABLE [dbo].[contain] CHECK CONSTRAINT [volid]
GO
ALTER TABLE [dbo].[TD]  WITH CHECK ADD  CONSTRAINT [iid] FOREIGN KEY([iid])
REFERENCES [dbo].[ITEM] ([_id])
GO
ALTER TABLE [dbo].[TD] CHECK CONSTRAINT [iid]
GO
ALTER TABLE [dbo].[TD]  WITH CHECK ADD  CONSTRAINT [tid] FOREIGN KEY([tid])
REFERENCES [dbo].[TRANS] ([_id])
GO
ALTER TABLE [dbo].[TD] CHECK CONSTRAINT [tid]
GO
ALTER TABLE [dbo].[TRANS]  WITH CHECK ADD  CONSTRAINT [cid] FOREIGN KEY([cid])
REFERENCES [dbo].[CUSTOMER] ([_id])
GO
ALTER TABLE [dbo].[TRANS] CHECK CONSTRAINT [cid]
GO
ALTER TABLE [dbo].[MAGAZINE]  WITH CHECK ADD CHECK  (([name]<>''))
GO
USE [master]
GO
ALTER DATABASE [HalifaxLibrary] SET  READ_WRITE 
GO
