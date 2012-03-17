.class Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteJpgRecordTask;
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
    name = "DeleteJpgRecordTask"
.end annotation


# instance fields
.field private final mFileName:Ljava/lang/String;

.field private final mGateWay:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

.field private mResult:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Ljava/lang/String;)V
    .locals 0
    .parameter "gateWay"
    .parameter "fileName"

    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteJpgRecordTask;->mFileName:Ljava/lang/String;

    .line 535
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteJpgRecordTask;->mGateWay:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    .line 536
    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteJpgRecordTask;->mResult:I

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteJpgRecordTask;->mGateWay:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteJpgRecordTask;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->delJPGFileid(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteJpgRecordTask;->mResult:I

    .line 540
    return-void
.end method
