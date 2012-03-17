.class Lcom/sonyericsson/android/camera3d/DcfPathBuilder$1;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/DcfPathBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$1;->this$0:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$1;->this$0:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    iput-boolean v1, v0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mIsScanning:Z

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$1;->this$0:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->search()Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$1;->this$0:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    iput-boolean v1, v0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mIsScanned:Z

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder$1;->this$0:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mIsScanning:Z

    .line 151
    return-void
.end method
