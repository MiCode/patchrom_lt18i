.class Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationListener"
.end annotation


# instance fields
.field private mLastLocation:Landroid/location/Location;

.field private mProvider:Ljava/lang/String;

.field private mValid:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/ImageManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/ImageManager;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "provider"

    .prologue
    .line 1851
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->mValid:Z

    .line 1852
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->mProvider:Ljava/lang/String;

    .line 1853
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 1854
    return-void
.end method

.method static synthetic access$1002(Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1834
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->mValid:Z

    return p1
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 1941
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 1944
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .parameter "newLocation"

    .prologue
    const-wide/16 v2, 0x0

    .line 1870
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 1883
    :goto_0
    return-void

    .line 1875
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 1876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->mValid:Z

    .line 1877
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    #calls: Lcom/sonyericsson/android/camera3d/ImageManager;->changeLcsStatus()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$900(Lcom/sonyericsson/android/camera3d/ImageManager;)V

    .line 1878
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->GPS_ACQUIRING_TIME:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 1903
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->mValid:Z

    .line 1904
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 1893
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 1922
    if-nez p2, :cond_0

    .line 1926
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->mValid:Z

    if-eqz v0, :cond_1

    .line 1933
    :cond_0
    :goto_0
    return-void

    .line 1930
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->mValid:Z

    .line 1931
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    #calls: Lcom/sonyericsson/android/camera3d/ImageManager;->changeLcsStatus()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$900(Lcom/sonyericsson/android/camera3d/ImageManager;)V

    goto :goto_0
.end method
