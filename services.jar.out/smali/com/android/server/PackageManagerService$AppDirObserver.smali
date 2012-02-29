.class final Lcom/android/server/PackageManagerService$AppDirObserver;
.super Landroid/os/FileObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDirObserver"
.end annotation


# instance fields
.field private final mIsRom:Z

.field private final mRootDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "mask"
    .parameter "isrom"

    .prologue
    .line 4463
    iput-object p1, p0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    .line 4464
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 4465
    iput-object p2, p0, Lcom/android/server/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    .line 4466
    iput-boolean p4, p0, Lcom/android/server/PackageManagerService$AppDirObserver;->mIsRom:Z

    .line 4467
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 19
    .parameter "event"
    .parameter "path"

    .prologue
    .line 4470
    const/16 v17, 0x0

    .line 4471
    .local v17, removedPackage:Ljava/lang/String;
    const/16 v18, -0x1

    .line 4472
    .local v18, removedUid:I
    const/4 v12, 0x0

    .line 4473
    .local v12, addedPackage:Ljava/lang/String;
    const/4 v13, -0x1

    .line 4475
    .local v13, addedUid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v4, v0

    iget-object v14, v4, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v14

    .line 4476
    const/16 v16, 0x0

    .line 4477
    .local v16, fullPathStr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 4478
    .local v5, fullPath:Ljava/io/File;
    if-eqz p2, :cond_0

    .line 4479
    :try_start_0
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v15

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4480
    .end local v5           #fullPath:Ljava/io/File;
    .local v15, fullPath:Ljava/io/File;
    :try_start_1
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v16

    move-object v5, v15

    .line 4487
    .end local v15           #fullPath:Ljava/io/File;
    .restart local v5       #fullPath:Ljava/io/File;
    :cond_0
    :try_start_2
    #calls: Lcom/android/server/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/PackageManagerService;->access$1800(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4490
    monitor-exit v14

    .line 4549
    .end local v5           #fullPath:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 4495
    .restart local v5       #fullPath:Ljava/io/File;
    :cond_2
    #calls: Lcom/android/server/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/PackageManagerService;->access$1900(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4496
    monitor-exit v14

    goto :goto_0

    .line 4534
    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 4498
    :cond_3
    const/4 v8, 0x0

    .line 4499
    .local v8, p:Landroid/content/pm/PackageParser$Package;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4500
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object v8, v0

    .line 4501
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4502
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x248

    move v4, v0

    if-eqz v4, :cond_4

    .line 4503
    if-eqz v8, :cond_4

    .line 4504
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v4, v0

    const/4 v6, 0x1

    invoke-virtual {v4, v8, v6}, Lcom/android/server/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 4505
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 4506
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v0, v4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    .line 4510
    :cond_4
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x88

    move v4, v0

    if-eqz v4, :cond_5

    .line 4511
    if-nez v8, :cond_5

    .line 4512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v4, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->mIsRom:Z

    move v7, v0

    if-eqz v7, :cond_7

    const/16 v7, 0x41

    :goto_2
    or-int/lit8 v7, v7, 0x2

    or-int/lit8 v7, v7, 0x4

    const/16 v8, 0x61

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .end local v8           #p:Landroid/content/pm/PackageParser$Package;
    move-result-wide v9

    #calls: Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;Lcom/android/server/PackageManagerService$PackageSetting;IIJ)Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v4 .. v10}, Lcom/android/server/PackageManagerService;->access$2000(Lcom/android/server/PackageManagerService;Ljava/io/File;Lcom/android/server/PackageManagerService$PackageSetting;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 4520
    .restart local v8       #p:Landroid/content/pm/PackageParser$Package;
    if-eqz v8, :cond_5

    .line 4521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4522
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v6, v0

    iget-object v7, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v9, v8, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    const/4 v9, 0x1

    :goto_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    #calls: Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V
    invoke-static/range {v6 .. v11}, Lcom/android/server/PackageManagerService;->access$2100(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 4524
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 4525
    :try_start_7
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4526
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4531
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4532
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v6}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 4533
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 4534
    :try_start_9
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4536
    if-eqz v17, :cond_6

    .line 4537
    new-instance v14, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v14, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 4538
    .local v14, extras:Landroid/os/Bundle;
    const-string v4, "android.intent.extra.UID"

    move-object v0, v14

    move-object v1, v4

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4539
    const-string v4, "android.intent.extra.DATA_REMOVED"

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4540
    .end local v5           #fullPath:Ljava/io/File;
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, v17

    move-object v2, v14

    move-object v3, v5

    #calls: Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .line 4543
    .end local v14           #extras:Landroid/os/Bundle;
    :cond_6
    if-eqz v12, :cond_1

    .line 4544
    new-instance v14, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v14, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 4545
    .restart local v14       #extras:Landroid/os/Bundle;
    const-string v4, "android.intent.extra.UID"

    invoke-virtual {v14, v4, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4546
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    const/4 v5, 0x0

    #calls: Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V
    invoke-static {v4, v12, v14, v5}, Lcom/android/server/PackageManagerService;->access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    goto/16 :goto_0

    .line 4501
    .end local v14           #extras:Landroid/os/Bundle;
    .restart local v5       #fullPath:Ljava/io/File;
    :catchall_1
    move-exception v6

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 4512
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 4522
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 4524
    :catchall_2
    move-exception v6

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 4533
    :catchall_3
    move-exception v6

    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 4534
    .end local v5           #fullPath:Ljava/io/File;
    .end local v8           #p:Landroid/content/pm/PackageParser$Package;
    .restart local v15       #fullPath:Ljava/io/File;
    :catchall_4
    move-exception v4

    move-object v5, v15

    .end local v15           #fullPath:Ljava/io/File;
    .restart local v5       #fullPath:Ljava/io/File;
    goto/16 :goto_1
.end method
