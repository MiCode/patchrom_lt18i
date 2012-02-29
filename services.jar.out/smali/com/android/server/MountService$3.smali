.class Lcom/android/server/MountService$3;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$code:I

.field final synthetic val$cooked:[Ljava/lang/String;

.field final synthetic val$raw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$3;->val$raw:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/MountService$3;->val$cooked:[Ljava/lang/String;

    iput p4, p0, Lcom/android/server/MountService$3;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 625
    const/4 v5, 0x0

    .line 639
    .local v5, in:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/MountService$3;->val$code:I

    move v11, v0

    const/16 v12, 0x25d

    if-ne v11, v12, :cond_2

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->val$cooked:[Ljava/lang/String;

    move-object v12, v0

    const/4 v13, 0x2

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->val$cooked:[Ljava/lang/String;

    move-object v13, v0

    const/4 v14, 0x3

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->val$cooked:[Ljava/lang/String;

    move-object v14, v0

    const/4 v15, 0x7

    aget-object v14, v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->val$cooked:[Ljava/lang/String;

    move-object v15, v0

    const/16 v16, 0xa

    aget-object v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v11, v12, v13, v14, v15}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 718
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object v11, v0

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 721
    :cond_1
    return-void

    .line 648
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/MountService$3;->val$code:I

    move v11, v0

    const/16 v12, 0x26c

    if-ne v11, v12, :cond_4

    .line 650
    const/4 v1, 0x0

    .line 651
    .local v1, avail:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->val$cooked:[Ljava/lang/String;

    move-object v11, v0

    const/4 v12, 0x5

    aget-object v11, v11, v12

    const-string v12, "available"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 652
    const/4 v1, 0x1

    .line 654
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->val$cooked:[Ljava/lang/String;

    move-object v12, v0

    const/4 v13, 0x3

    aget-object v12, v12, v13

    #calls: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V
    invoke-static {v11, v12, v1}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    goto :goto_0

    .line 655
    .end local v1           #avail:Z
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/MountService$3;->val$code:I

    move v11, v0

    const/16 v12, 0x276

    if-eq v11, v12, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/MountService$3;->val$code:I

    move v11, v0

    const/16 v12, 0x277

    if-eq v11, v12, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/MountService$3;->val$code:I

    move v11, v0

    const/16 v12, 0x278

    if-ne v11, v12, :cond_8

    .line 661
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->val$cooked:[Ljava/lang/String;

    move-object v11, v0

    const/4 v12, 0x2

    aget-object v6, v11, v12

    .line 662
    .local v6, label:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->val$cooked:[Ljava/lang/String;

    move-object v11, v0

    const/4 v12, 0x3

    aget-object v9, v11, v12

    .line 663
    .local v9, path:Ljava/lang/String;
    const/4 v7, -0x1

    .line 664
    .local v7, major:I
    const/4 v8, -0x1

    .line 667
    .local v8, minor:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->val$cooked:[Ljava/lang/String;

    move-object v11, v0

    const/4 v12, 0x6

    aget-object v11, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->val$cooked:[Ljava/lang/String;

    move-object v13, v0

    const/4 v14, 0x6

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, devComp:Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, devTok:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 670
    const/4 v11, 0x1

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 675
    .end local v2           #devComp:Ljava/lang/String;
    .end local v3           #devTok:[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/MountService$3;->val$code:I

    move v11, v0

    const/16 v12, 0x276

    if-ne v11, v12, :cond_6

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object v11, v0

    #calls: Lcom/android/server/MountService;->isAutomountEnabled(Ljava/lang/String;)Z
    invoke-static {v11, v9}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 679
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object v11, v0

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v11, v9}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v10

    .local v10, rc:I
    if-eqz v10, :cond_0

    .line 680
    const-string v11, "MountService"

    const-string v12, "Insertion mount failed (%d)"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 682
    .end local v10           #rc:I
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 683
    .local v4, ex:Ljava/lang/Exception;
    const-string v11, "MountService"

    const-string v12, "Failed to mount media on insertion"

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 671
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v11

    move-object v4, v11

    .line 672
    .restart local v4       #ex:Ljava/lang/Exception;
    const-string v11, "MountService"

    const-string v12, "Failed to parse major/minor"

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 686
    .end local v4           #ex:Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/MountService$3;->val$code:I

    move v11, v0

    const/16 v12, 0x277

    if-ne v11, v12, :cond_7

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object v11, v0

    invoke-virtual {v11, v9}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "bad_removal"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object v11, v0

    const-string v12, "unmounted"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v9, v12}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    new-instance v5, Landroid/content/Intent;

    .end local v5           #in:Landroid/content/Intent;
    const-string v11, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 697
    .restart local v5       #in:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object v11, v0

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object v11, v0

    const-string v12, "removed"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v9, v12}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    new-instance v5, Landroid/content/Intent;

    .end local v5           #in:Landroid/content/Intent;
    const-string v11, "android.intent.action.MEDIA_REMOVED"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v5       #in:Landroid/content/Intent;
    goto/16 :goto_0

    .line 702
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/MountService$3;->val$code:I

    move v11, v0

    const/16 v12, 0x278

    if-ne v11, v12, :cond_0

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object v11, v0

    const-string v12, "unmounted"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v9, v12}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    new-instance v5, Landroid/content/Intent;

    .end local v5           #in:Landroid/content/Intent;
    const-string v11, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 707
    .restart local v5       #in:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object v11, v0

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object v11, v0

    const-string v12, "bad_removal"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v9, v12}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    new-instance v5, Landroid/content/Intent;

    .end local v5           #in:Landroid/content/Intent;
    const-string v11, "android.intent.action.MEDIA_BAD_REMOVAL"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v5       #in:Landroid/content/Intent;
    goto/16 :goto_0

    .line 715
    .end local v6           #label:Ljava/lang/String;
    .end local v7           #major:I
    .end local v8           #minor:I
    .end local v9           #path:Ljava/lang/String;
    :cond_8
    const-string v11, "MountService"

    const-string v12, "Unknown code {%d}"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/MountService$3;->val$code:I

    move v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
