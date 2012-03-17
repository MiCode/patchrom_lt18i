.class Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteMpoRecordTask;
.super Ljava/lang/Object;
.source "MpoContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteMpoRecordTask"
.end annotation


# instance fields
.field private final mGateWay:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

.field private mResult:Z

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Landroid/net/Uri;)V
    .locals 0
    .parameter "gateWay"
    .parameter "uri"

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteMpoRecordTask;->mUri:Landroid/net/Uri;

    .line 557
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteMpoRecordTask;->mGateWay:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    .line 558
    return-void
.end method


# virtual methods
.method public getResult()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteMpoRecordTask;->mResult:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteMpoRecordTask;->mGateWay:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteMpoRecordTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->delete(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteMpoRecordTask;->mResult:Z

    .line 562
    return-void
.end method
