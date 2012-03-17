.class public Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;
.super Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
.source "StorageEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageEventReceiver"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;-><init>()V

    .line 77
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;

    return-object v0
.end method

.method private registerBroadcastReceiver(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "action"
    .parameter "dataScheme"

    .prologue
    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {v0, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method


# virtual methods
.method protected onPause(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 2
    .parameter "dataStore"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    return-void
.end method

.method protected onResume(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 3
    .parameter "dataStore"

    .prologue
    .line 64
    const-string v0, "file"

    .line 65
    .local v0, dataScheme:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    const-string v2, "file"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->registerBroadcastReceiver(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "android.intent.action.MEDIA_SHARED"

    const-string v2, "file"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->registerBroadcastReceiver(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "android.intent.action.MEDIA_EJECT"

    const-string v2, "file"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->registerBroadcastReceiver(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "com.sonyericsson.android.media.panorama3d.provider.SCAN_FINISHED"

    const-string v2, "file"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->registerBroadcastReceiver(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public setListener(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;

    .line 52
    return-void
.end method
