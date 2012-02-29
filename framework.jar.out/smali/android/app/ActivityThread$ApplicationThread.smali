.class final Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/ApplicationThreadNative;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x1

.field private static final DB_INFO_FORMAT:Ljava/lang/String; = "  %8d %8d %14d  %s"

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%17s %8s %8s %8s %8s"

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%17s %8d"

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%17s %8d %17s %8d"

.field private static final TWO_COUNT_COLUMNS_DB:Ljava/lang/String; = "%20s %8d %20s %8d"


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/ApplicationThreadNative;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 375
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "pw"
    .parameter "format"
    .parameter "objs"

    .prologue
    .line 853
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    return-void
.end method


# virtual methods
.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;IZLandroid/content/res/Configuration;Ljava/util/Map;)V
    .locals 3
    .parameter "processName"
    .parameter "appInfo"
    .parameter
    .parameter "instrumentationName"
    .parameter "profileFile"
    .parameter "instrumentationArgs"
    .parameter "instrumentationWatcher"
    .parameter "debugMode"
    .parameter "isRestrictedBackupMode"
    .parameter "config"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "IZ",
            "Landroid/content/res/Configuration;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p3, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p11, services:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz p11, :cond_0

    .line 552
    invoke-static {p11}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 555
    :cond_0
    new-instance v0, Landroid/app/ActivityThread$AppBindData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$AppBindData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 556
    .local v0, data:Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 557
    iput-object p2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 558
    iput-object p3, v0, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 559
    iput-object p4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 560
    iput-object p5, v0, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    .line 561
    iput-object p6, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 562
    iput-object p7, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 563
    iput p8, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 564
    iput-boolean p9, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 565
    iput-object p10, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 566
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6e

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 567
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .parameter "cmd"
    .parameter "packages"

    .prologue
    .line 664
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 665
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 56
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 673
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v51

    const-wide/16 v53, 0x400

    div-long v35, v51, v53

    .line 674
    .local v35, nativeMax:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v51

    const-wide/16 v53, 0x400

    div-long v31, v51, v53

    .line 675
    .local v31, nativeAllocated:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v51

    const-wide/16 v53, 0x400

    div-long v33, v51, v53

    .line 677
    .local v33, nativeFree:J
    new-instance v30, Landroid/os/Debug$MemoryInfo;

    invoke-direct/range {v30 .. v30}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 678
    .local v30, memInfo:Landroid/os/Debug$MemoryInfo;
    invoke-static/range {v30 .. v30}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 680
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v38, v0

    .line 681
    .local v38, nativeShared:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v22, v0

    .line 682
    .local v22, dalvikShared:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v41, v0

    .line 684
    .local v41, otherShared:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v37, v0

    .line 685
    .local v37, nativePrivate:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v21, v0

    .line 686
    .local v21, dalvikPrivate:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v40, v0

    .line 688
    .local v40, otherPrivate:I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v43

    .line 690
    .local v43, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v51

    const-wide/16 v53, 0x400

    div-long v19, v51, v53

    .line 691
    .local v19, dalvikMax:J
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v51

    const-wide/16 v53, 0x400

    div-long v17, v51, v53

    .line 692
    .local v17, dalvikFree:J
    sub-long v15, v19, v17

    .line 693
    .local v15, dalvikAllocated:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v47

    .line 694
    .local v47, viewInstanceCount:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootInstanceCount()J

    move-result-wide v49

    .line 695
    .local v49, viewRootInstanceCount:J
    invoke-static {}, Landroid/app/ContextImpl;->getInstanceCount()J

    move-result-wide v7

    .line 696
    .local v7, appContextInstanceCount:J
    invoke-static {}, Landroid/app/Activity;->getInstanceCount()J

    move-result-wide v5

    .line 697
    .local v5, activityInstanceCount:J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v25

    .line 698
    .local v25, globalAssetCount:I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v26

    .line 699
    .local v26, globalAssetManagerCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v13

    .line 700
    .local v13, binderLocalObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v14

    .line 701
    .local v14, binderProxyObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v12

    .line 702
    .local v12, binderDeathObjectCount:I
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getInstanceCount()I

    move-result v39

    .line 703
    .local v39, openSslSocketCount:I
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getHeapAllocatedSize()J

    move-result-wide v51

    const-wide/16 v53, 0x400

    div-long v44, v51, v53

    .line 704
    .local v44, sqliteAllocated:J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v46

    .line 707
    .local v46, stats:Landroid/database/sqlite/SQLiteDebug$PagerStats;
    const/16 v24, 0x0

    .line 708
    .local v24, doCheckinFormat:Z
    if-eqz p3, :cond_1

    .line 709
    move-object/from16 v10, p3

    .local v10, arr$:[Ljava/lang/String;
    move-object v0, v10

    array-length v0, v0

    move/from16 v29, v0

    .local v29, len$:I
    const/16 v28, 0x0

    .local v28, i$:I
    :goto_0
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    aget-object v9, v10, v28

    .line 710
    .local v9, arg:Ljava/lang/String;
    const-string v51, "-c"

    move-object/from16 v0, v51

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_0

    const/16 v24, 0x1

    .line 709
    :cond_0
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 715
    .end local v9           #arg:Ljava/lang/String;
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v28           #i$:I
    .end local v29           #len$:I
    :cond_1
    if-eqz v24, :cond_3

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v51, v0

    if-eqz v51, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v42, v51

    .line 722
    .local v42, processName:Ljava/lang/String;
    :goto_1
    const/16 v51, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 723
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v51

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 724
    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 727
    move-object/from16 v0, p2

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 728
    move-object/from16 v0, p2

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 729
    const-string v51, "N/A,"

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 730
    add-long v51, v35, v19

    move-object/from16 v0, p2

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 733
    move-object/from16 v0, p2

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 734
    move-object/from16 v0, p2

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 735
    const-string v51, "N/A,"

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 736
    add-long v51, v31, v15

    move-object/from16 v0, p2

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 739
    move-object/from16 v0, p2

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 740
    move-object/from16 v0, p2

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 741
    const-string v51, "N/A,"

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    add-long v51, v33, v17

    move-object/from16 v0, p2

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 745
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v51, v0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 746
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v51, v0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 747
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v51, v0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 748
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v51, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v52, v0

    add-int v51, v51, v52

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v52, v0

    add-int v51, v51, v52

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 751
    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 752
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 753
    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 754
    add-int v51, v38, v22

    add-int v51, v51, v41

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 757
    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 758
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 759
    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 760
    add-int v51, v37, v21

    add-int v51, v51, v40

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 763
    move-object/from16 v0, p2

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 764
    move-object/from16 v0, p2

    move-wide/from16 v1, v49

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 765
    move-object/from16 v0, p2

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 766
    move-object/from16 v0, p2

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 768
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 769
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 770
    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 771
    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 773
    move-object/from16 v0, p2

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 774
    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 777
    move-object/from16 v0, p2

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 778
    move-object/from16 v0, v46

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v51, v0

    move/from16 v0, v51

    div-int/lit16 v0, v0, 0x400

    move/from16 v51, v0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 779
    move-object/from16 v0, v46

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflo:I

    move/from16 v51, v0

    move/from16 v0, v51

    div-int/lit16 v0, v0, 0x400

    move/from16 v51, v0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 780
    move-object/from16 v0, v46

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    move/from16 v51, v0

    move/from16 v0, v51

    div-int/lit16 v0, v0, 0x400

    move/from16 v51, v0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 781
    const/16 v27, 0x0

    .local v27, i:I
    :goto_2
    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v51

    move/from16 v0, v27

    move/from16 v1, v51

    if-ge v0, v1, :cond_5

    .line 782
    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 783
    .local v23, dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string v51, "  %8d %8d %14d  %s"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v54, v0

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x1

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v54, v0

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v54, v0

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 785
    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 781
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 718
    .end local v23           #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v27           #i:I
    .end local v42           #processName:Ljava/lang/String;
    :cond_2
    const-string/jumbo v51, "unknown"

    move-object/from16 v42, v51

    goto/16 :goto_1

    .line 792
    :cond_3
    const-string v51, "%17s %8s %8s %8s %8s"

    const/16 v52, 0x5

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, ""

    aput-object v54, v52, v53

    const/16 v53, 0x1

    const-string v54, "native"

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "dalvik"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    const-string v54, "other"

    aput-object v54, v52, v53

    const/16 v53, 0x4

    const-string/jumbo v54, "total"

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 793
    const-string v51, "%17s %8s %8s %8s %8s"

    const/16 v52, 0x5

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "size:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x3

    const-string v54, "N/A"

    aput-object v54, v52, v53

    const/16 v53, 0x4

    add-long v54, v35, v19

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 794
    const-string v51, "%17s %8s %8s %8s %8s"

    const/16 v52, 0x5

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "allocated:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x3

    const-string v54, "N/A"

    aput-object v54, v52, v53

    const/16 v53, 0x4

    add-long v54, v31, v15

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    const-string v51, "%17s %8s %8s %8s %8s"

    const/16 v52, 0x5

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "free:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x3

    const-string v54, "N/A"

    aput-object v54, v52, v53

    const/16 v53, 0x4

    add-long v54, v33, v17

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 799
    const-string v51, "%17s %8s %8s %8s %8s"

    const/16 v52, 0x5

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "(Pss):"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x3

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x4

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v54, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v55, v0

    add-int v54, v54, v55

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v55, v0

    add-int v54, v54, v55

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    const-string v51, "%17s %8s %8s %8s %8s"

    const/16 v52, 0x5

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "(shared dirty):"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x3

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x4

    add-int v54, v38, v22

    add-int v54, v54, v41

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    const-string v51, "%17s %8s %8s %8s %8s"

    const/16 v52, 0x5

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "(priv dirty):"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x3

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x4

    add-int v54, v37, v21

    add-int v54, v54, v40

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 807
    const-string v51, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    const-string v51, " Objects"

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    const-string v51, "%17s %8d %17s %8d"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "Views:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "ViewRoots:"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 812
    const-string v51, "%17s %8d %17s %8d"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "AppContexts:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "Activities:"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 815
    const-string v51, "%17s %8d %17s %8d"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "Assets:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "AssetManagers:"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 818
    const-string v51, "%17s %8d %17s %8d"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "Local Binders:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "Proxy Binders:"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 820
    const-string v51, "%17s %8d"

    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "Death Recipients:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    const-string v51, "%17s %8d"

    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "OpenSSL Sockets:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    const-string v51, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    const-string v51, " SQL"

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    const-string v51, "%20s %8d %20s %8d"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "heap:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "MEMORY_USED:"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    move-object/from16 v0, v46

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v54, v0

    move/from16 v0, v54

    div-int/lit16 v0, v0, 0x400

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 829
    const-string v51, "%20s %8d %20s %8d"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "PAGECACHE_OVERFLOW:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    move-object/from16 v0, v46

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflo:I

    move/from16 v54, v0

    move/from16 v0, v54

    div-int/lit16 v0, v0, 0x400

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "MALLOC_SIZE:"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    move-object/from16 v0, v46

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    move/from16 v54, v0

    move/from16 v0, v54

    div-int/lit16 v0, v0, 0x400

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 831
    const-string v51, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 833
    .local v4, N:I
    if-lez v4, :cond_4

    .line 834
    const-string v51, " DATABASES"

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    const-string v51, "  %8s %8s %14s  %s"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "pgsz"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    const-string v54, "dbsz"

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "Lookaside(b)"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    const-string v54, "Dbname"

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 836
    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_3
    move/from16 v0, v27

    move v1, v4

    if-ge v0, v1, :cond_4

    .line 837
    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 838
    .restart local v23       #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string v51, "  %8d %8d %14d  %s"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v54, v0

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x1

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v54, v0

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v54, v0

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 836
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 844
    .end local v23           #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v27           #i:I
    :cond_4
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v11

    .line 845
    .local v11, assetAlloc:Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 846
    const-string v51, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    const-string v51, " Asset Allocations"

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 850
    .end local v4           #N:I
    .end local v11           #assetAlloc:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "servicetoken"
    .parameter "args"

    .prologue
    .line 605
    new-instance v0, Landroid/app/ActivityThread$DumpServiceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$DumpServiceInfo;-><init>(Landroid/app/ActivityThread$1;)V

    .line 606
    .local v0, data:Landroid/app/ActivityThread$DumpServiceInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$DumpServiceInfo;->fd:Ljava/io/FileDescriptor;

    .line 607
    iput-object p2, v0, Landroid/app/ActivityThread$DumpServiceInfo;->service:Landroid/os/IBinder;

    .line 608
    iput-object p3, v0, Landroid/app/ActivityThread$DumpServiceInfo;->args:[Ljava/lang/String;

    .line 609
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ActivityThread$DumpServiceInfo;->dumped:Z

    .line 610
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7b

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 611
    monitor-enter v0

    .line 612
    :goto_0
    :try_start_0
    iget-boolean v1, v0, Landroid/app/ActivityThread$DumpServiceInfo;->dumped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 614
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 615
    :catch_0
    move-exception v1

    goto :goto_0

    .line 620
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 621
    return-void

    .line 620
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
    .locals 0
    .parameter "outInfo"

    .prologue
    .line 660
    invoke-static {p1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 661
    return-void
.end method

.method public processInBackground()V
    .locals 3

    .prologue
    const/16 v2, 0x78

    .line 600
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 601
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 602
    return-void
.end method

.method public profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .parameter "start"
    .parameter "path"
    .parameter "fd"

    .prologue
    .line 641
    new-instance v0, Landroid/app/ActivityThread$ProfilerControlData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ProfilerControlData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 642
    .local v0, pcd:Landroid/app/ActivityThread$ProfilerControlData;
    iput-object p2, v0, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    .line 643
    iput-object p3, v0, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 644
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7f

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, v0, v3}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 645
    return-void

    .line 644
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public requestThumbnail(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 578
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x75

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 579
    return-void
.end method

.method public scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 637
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7d

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 638
    return-void
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 3
    .parameter "token"
    .parameter "intent"
    .parameter "rebind"

    .prologue
    .line 512
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$BindServiceData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 513
    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 514
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 515
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 517
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 518
    return-void
.end method

.method public scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 582
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 583
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 587
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x76

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 589
    return-void

    .line 587
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 668
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x86

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 669
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;I)V
    .locals 3
    .parameter "app"
    .parameter "backupMode"

    .prologue
    .line 487
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 488
    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 489
    iput p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 491
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 492
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;)V
    .locals 3
    .parameter "token"
    .parameter "info"

    .prologue
    .line 503
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$CreateServiceData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 504
    .local v0, s:Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 505
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 507
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 508
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"

    .prologue
    .line 468
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6d

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v0, v1, p1, v2, p3}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 470
    return-void

    .line 468
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .parameter "app"

    .prologue
    .line 495
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 496
    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 498
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 499
    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    .prologue
    .line 570
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 571
    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 3
    .parameter "intent"
    .parameter "token"
    .parameter "ident"
    .parameter "info"
    .parameter "state"
    .parameter
    .parameter
    .parameter "notResumed"
    .parameter "isForward"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p6, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p7, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 425
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 426
    iput p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 427
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 428
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 429
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 431
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 432
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 434
    iput-boolean p8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 435
    iput-boolean p9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 437
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x64

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 438
    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    .prologue
    .line 633
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 634
    return-void
.end method

.method public final scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Landroid/app/ActivityThread$NewIntentData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$NewIntentData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 460
    .local v0, data:Landroid/app/ActivityThread$NewIntentData;
    iput-object p1, v0, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    .line 461
    iput-object p2, v0, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    .line 463
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x70

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 464
    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZI)V
    .locals 3
    .parameter "token"
    .parameter "finished"
    .parameter "userLeaving"
    .parameter "configChanges"

    .prologue
    .line 387
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v1, 0x66

    :goto_0
    if-eqz p3, :cond_1

    const/4 v2, 0x1

    :goto_1
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v0, v1, p1, v2, p4}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 392
    return-void

    .line 387
    :cond_0
    const/16 v1, 0x65

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 3
    .parameter "intent"
    .parameter "info"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 474
    new-instance v0, Landroid/app/ActivityThread$ReceiverData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 476
    .local v0, r:Landroid/app/ActivityThread$ReceiverData;
    iput-object p1, v0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 477
    iput-object p2, v0, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 478
    iput p3, v0, Landroid/app/ActivityThread$ReceiverData;->resultCode:I

    .line 479
    iput-object p4, v0, Landroid/app/ActivityThread$ReceiverData;->resultData:Ljava/lang/String;

    .line 480
    iput-object p5, v0, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    .line 481
    iput-boolean p6, v0, Landroid/app/ActivityThread$ReceiverData;->sync:Z

    .line 483
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x71

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 484
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0
    .parameter "receiver"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "dataStr"
    .parameter "extras"
    .parameter "ordered"
    .parameter "sticky"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 629
    invoke-interface/range {p1 .. p7}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V

    .line 630
    return-void
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    .locals 3
    .parameter "token"
    .parameter
    .parameter
    .parameter "configChanges"
    .parameter "notResumed"
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 443
    .local p2, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 445
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 446
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 447
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 448
    iput-boolean p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 449
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 451
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 452
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7e

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, v0, p4}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 456
    return-void

    .line 453
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;Z)V
    .locals 3
    .parameter "token"
    .parameter "isForward"

    .prologue
    .line 408
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6b

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, p1, v2}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 409
    return-void

    .line 408
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 3
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ActivityThread$ResultData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ResultData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 413
    .local v0, res:Landroid/app/ActivityThread$ResultData;
    iput-object p1, v0, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    .line 414
    iput-object p2, v0, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    .line 415
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6c

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 416
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;IILandroid/content/Intent;)V
    .locals 3
    .parameter "token"
    .parameter "startId"
    .parameter "flags"
    .parameter "args"

    .prologue
    .line 530
    new-instance v0, Landroid/app/ActivityThread$ServiceArgsData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ServiceArgsData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 531
    .local v0, s:Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v0, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 532
    iput p2, v0, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 533
    iput p3, v0, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 534
    iput-object p4, v0, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 536
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x73

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 537
    return-void
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .parameter "token"
    .parameter "showWindow"
    .parameter "configChanges"

    .prologue
    .line 396
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v1, 0x67

    :goto_0
    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v0, v1, p1, v2, p3}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 399
    return-void

    .line 396
    :cond_0
    const/16 v1, 0x68

    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 540
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 541
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    .prologue
    .line 574
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 575
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .parameter "token"
    .parameter "intent"

    .prologue
    .line 521
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$BindServiceData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 522
    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 523
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 525
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 526
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .parameter "token"
    .parameter "showWindow"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v1, 0x69

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 405
    return-void

    .line 402
    :cond_0
    const/16 v1, 0x6a

    goto :goto_0
.end method

.method public setSchedulingGroup(I)V
    .locals 4
    .parameter "group"

    .prologue
    .line 653
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :goto_0
    return-void

    .line 654
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 655
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setting process group to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateTimeZone(Ljava/lang/String;)V
    .locals 1
    .parameter "timeZone"

    .prologue
    .line 592
    if-eqz p1, :cond_0

    .line 593
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 597
    :goto_0
    return-void

    .line 595
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    goto :goto_0
.end method
