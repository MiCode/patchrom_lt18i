.class Lcom/sonyericsson/android/camera3d/ImageManager$1;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/ImageManager;->storeVideo(Ljava/lang/String;JLcom/sonyericsson/android/camera3d/view/CameraWindow;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/android/camera3d/TakenStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

.field final synthetic val$duration:J

.field final synthetic val$ext:Ljava/lang/String;

.field final synthetic val$mime:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$settings:Ljava/util/EnumMap;

.field final synthetic val$takenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/ImageManager;Lcom/sonyericsson/android/camera3d/TakenStatus;Ljava/lang/String;Ljava/util/EnumMap;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1722
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->val$takenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->val$settings:Ljava/util/EnumMap;

    iput-wide p5, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->val$duration:J

    iput-object p7, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->val$ext:Ljava/lang/String;

    iput-object p8, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->val$mime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1724
    iget-object v13, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->val$takenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    .line 1725
    .local v13, status:Lcom/sonyericsson/android/camera3d/TakenStatus;
    const/4 v12, -0x1

    .line 1726
    .local v12, result:I
    const/4 v14, 0x0

    .line 1747
    .local v14, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    const-string v1, ""

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->val$path:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->val$takenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    iget-wide v4, v4, Lcom/sonyericsson/android/camera3d/TakenStatus;->mDate:J

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->val$settings:Ljava/util/EnumMap;

    iget-wide v7, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->val$duration:J

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->val$ext:Ljava/lang/String;

    iget-object v10, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->val$mime:Ljava/lang/String;

    invoke-virtual/range {v0 .. v10}, Lcom/sonyericsson/android/camera3d/ImageManager;->insertVideoContentProvider(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;JLjava/util/EnumMap;JLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1753
    :goto_0
    if-eqz v14, :cond_1

    .line 1755
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->val$path:Ljava/lang/String;

    #calls: Lcom/sonyericsson/android/camera3d/ImageManager;->notifyStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    invoke-static {v0, v13, v1, v2, v14}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$100(Lcom/sonyericsson/android/camera3d/ImageManager;Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    .line 1765
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    #getter for: Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataHandler:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$700(Lcom/sonyericsson/android/camera3d/ImageManager;)Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    #getter for: Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$600(Lcom/sonyericsson/android/camera3d/ImageManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    const/4 v1, 0x0

    #setter for: Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$602(Lcom/sonyericsson/android/camera3d/ImageManager;Landroid/content/Context;)Landroid/content/Context;

    .line 1780
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    const/4 v1, 0x0

    #setter for: Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$802(Lcom/sonyericsson/android/camera3d/ImageManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1781
    return-void

    .line 1749
    :catch_0
    move-exception v11

    .line 1750
    .local v11, ex:Landroid/database/sqlite/SQLiteFullException;
    const/4 v12, -0x2

    goto :goto_0

    .line 1778
    .end local v11           #ex:Landroid/database/sqlite/SQLiteFullException;
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$1;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    const/4 v1, 0x0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #calls: Lcom/sonyericsson/android/camera3d/ImageManager;->notifyStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    invoke-static {v0, v13, v12, v1, v2}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$100(Lcom/sonyericsson/android/camera3d/ImageManager;Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    goto :goto_1
.end method
