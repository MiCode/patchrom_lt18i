.class public Lcom/sonyericsson/android/camera3d/viewer/AppController;
.super Ljava/lang/Object;
.source "AppController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/Mediator;
.implements Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;
.implements Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;
.implements Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/AppController$OnFinishListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppController"


# instance fields
.field private final mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

.field private final mEventReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

.field private final mLayerFactory:Lcom/sonyericsson/android/camera3d/viewer/layer/LayerFactory;

.field private final mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

.field private final mOnFinishListener:Lcom/sonyericsson/android/camera3d/viewer/AppController$OnFinishListener;

.field private final mScreenTimeout:Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;

.field private final mStorageEventReceiver:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;

.field private final mTiltDetector:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;

.field private final mTouchEventGuard:Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/AppController$OnFinishListener;Lcom/sonyericsson/android/camera3d/viewer/layer/LayerFactory;Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 2
    .parameter "onFinishListener"
    .parameter "layerFactory"
    .parameter "hdmiConnection"
    .parameter "tiltDetector"
    .parameter "screenTimeout"
    .parameter "touchEventGuard"
    .parameter "storageEventReceiver"
    .parameter "dataStore"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHandler:Landroid/os/Handler;

    .line 113
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mOnFinishListener:Lcom/sonyericsson/android/camera3d/viewer/AppController$OnFinishListener;

    .line 114
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayerFactory:Lcom/sonyericsson/android/camera3d/viewer/layer/LayerFactory;

    .line 115
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->setHdmiConnectionListenerFor3dOutput(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;)V

    .line 117
    iput-object p4, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mTiltDetector:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;

    .line 118
    iput-object p5, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mScreenTimeout:Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;

    .line 119
    iput-object p6, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mTouchEventGuard:Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;

    .line 120
    iput-object p7, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mStorageEventReceiver:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mStorageEventReceiver:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->setListener(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;)V

    .line 122
    iput-object p8, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mEventReceivers:Ljava/util/List;

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mEventReceivers:Ljava/util/List;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mEventReceivers:Ljava/util/List;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mEventReceivers:Ljava/util/List;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mScreenTimeout:Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mEventReceivers:Ljava/util/List;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mTiltDetector:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mEventReceivers:Ljava/util/List;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mStorageEventReceiver:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/AppController;)Lcom/sonyericsson/android/camera3d/viewer/DataStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/viewer/AppController;)Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/viewer/AppController;)Lcom/sonyericsson/android/camera3d/viewer/AppController$OnFinishListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mOnFinishListener:Lcom/sonyericsson/android/camera3d/viewer/AppController$OnFinishListener;

    return-object v0
.end method


# virtual methods
.method public browse()V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayerFactory:Lcom/sonyericsson/android/camera3d/viewer/layer/LayerFactory;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/LayerFactory;->createBrowserLayer()Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->getOutputMode()Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->show(Lcom/sonyericsson/android/camera3d/viewer/AppLayer;Lcom/sonyericsson/android/camera3d/viewer/DataStore;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->clearPreviousContent()V

    .line 163
    return-void
.end method

.method public close(Lcom/sonyericsson/android/camera3d/viewer/AppLayer;Z)V
    .locals 3
    .parameter "layer"
    .parameter "finishIfEmpty"

    .prologue
    .line 210
    move-object v0, p1

    .line 211
    .local v0, remove:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/AppController$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/sonyericsson/android/camera3d/viewer/AppController$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/AppController;Lcom/sonyericsson/android/camera3d/viewer/AppLayer;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method

.method public closeActiveLayer()Z
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->close(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    .line 203
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->getActiveLayer()Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    move-result-object v0

    .line 204
    .local v0, layer:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public closeLayers()V
    .locals 2

    .prologue
    .line 223
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->close(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method

.method public delete(Z)V
    .locals 5
    .parameter "deleteAll"

    .prologue
    .line 179
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getCurrentContent()Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    move-result-object v2

    .line 180
    .local v2, media:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getIndex()I

    move-result v0

    .line 182
    .local v0, index:I
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getProvider()Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->delete(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Z)Z

    .line 183
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->resetMpoInfoRetriever()V

    .line 184
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getContentCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->setCurrentContent(I)Z

    .line 190
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->getActiveLayer()Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    move-result-object v1

    .line 191
    .local v1, layer:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    if-eqz v1, :cond_2

    .line 192
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->update(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    .line 197
    .end local v0           #index:I
    .end local v1           #layer:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    :cond_0
    :goto_1
    return-void

    .line 188
    .restart local v0       #index:I
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->close(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    goto :goto_0

    .line 194
    .restart local v1       #layer:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mOnFinishListener:Lcom/sonyericsson/android/camera3d/viewer/AppController$OnFinishListener;

    invoke-interface {v3, p0}, Lcom/sonyericsson/android/camera3d/viewer/AppController$OnFinishListener;->onFinish(Lcom/sonyericsson/android/camera3d/viewer/AppController;)V

    goto :goto_1
.end method

.method public hasLayer()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableKey(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->getOutputMode()Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->is3D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants;->ENABLE_KEYCODE_IN3D:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 328
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants;->ENABLE_KEYCODE_IN2D:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public next()V
    .locals 5

    .prologue
    .line 235
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getCurrentContent()Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    move-result-object v0

    .line 236
    .local v0, content:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getIndex()I

    move-result v1

    .line 240
    .local v1, index:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->setCurrentContent(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->getActiveLayer()Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    move-result-object v2

    .line 243
    .local v2, layer:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    if-eqz v2, :cond_0

    .line 244
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->update(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    goto :goto_0
.end method

.method public on3dInformationDialogTimeout()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->set3DTVOutput(Z)V

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mTouchEventGuard:Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->isOutput3d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;->rejectTouchEvent(Z)V

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->getOutputMode()Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->setOutputModeOfLayers(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 383
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 300
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->getServiceState()Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_TO_SET_3D:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    if-ne v1, v2, :cond_0

    .line 309
    :goto_0
    return v0

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->getCount()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 306
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->close(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    goto :goto_0

    .line 309
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinishScanning(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)V
    .locals 6
    .parameter "sender"

    .prologue
    .line 418
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getProvider()Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    move-result-object v3

    .line 419
    .local v3, providerAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getMode()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->getCount(Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;)I

    move-result v0

    .line 420
    .local v0, count:I
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getMpoInfoRetriever()Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    move-result-object v1

    .line 421
    .local v1, currentSet:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->getCount()I

    move-result v5

    if-ne v0, v5, :cond_1

    .line 433
    :cond_0
    return-void

    .line 427
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mEventReceivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;

    .line 428
    .local v4, receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    invoke-virtual {v4, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->notifyFinishScanning(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)V

    goto :goto_0

    .line 430
    .end local v4           #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->toCollection()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    .line 431
    .restart local v4       #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    invoke-virtual {v4, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->notifyFinishScanning(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)V

    goto :goto_1
.end method

.method public onHdmiConnected()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 335
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getMode()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->PANORAMA3D:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    if-ne v3, v4, :cond_1

    move v0, v2

    .line 336
    .local v0, require3d:Z
    :goto_0
    if-ne v0, v2, :cond_0

    .line 337
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->set3DTVOutput(Z)V

    .line 339
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mTouchEventGuard:Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->isOutput3d()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;->rejectTouchEvent(Z)V

    .line 341
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->getServiceState()Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_TO_SET_3D:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    if-ne v3, v4, :cond_2

    .line 362
    :goto_1
    return-void

    .line 335
    .end local v0           #require3d:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 354
    .restart local v0       #require3d:Z
    :cond_2
    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->getServiceState()Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_TO_SET_3D:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    if-eq v2, v3, :cond_3

    .line 356
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->getOutputMode()Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    move-result-object v1

    .line 361
    .local v1, state:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->setOutputModeOfLayers(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    goto :goto_1

    .line 358
    .end local v1           #state:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;
    :cond_3
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .restart local v1       #state:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;
    goto :goto_2
.end method

.method public onHdmiDisconnected()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mTouchEventGuard:Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;->rejectTouchEvent(Z)V

    .line 369
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->setOutputModeOfLayers(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 370
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->setOutputMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 371
    return-void
.end method

.method public onKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMounted(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Ljava/lang/String;)V
    .locals 4
    .parameter "sender"
    .parameter "storagePath"

    .prologue
    const/4 v3, 0x1

    .line 397
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mEventReceivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;

    .line 398
    .local v1, receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    invoke-virtual {v1, p1, v3}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->notifyChangeStorageState(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Z)V

    goto :goto_0

    .line 400
    .end local v1           #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->toCollection()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    .line 401
    .restart local v1       #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    invoke-virtual {v1, p1, v3}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->notifyChangeStorageState(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Z)V

    goto :goto_1

    .line 403
    .end local v1           #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 290
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mEventReceivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;

    .line 291
    .local v1, receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->notifyPause(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    goto :goto_0

    .line 293
    .end local v1           #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->toCollection()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    .line 294
    .restart local v1       #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->notifyPause(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    goto :goto_1

    .line 296
    .end local v1           #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 272
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mEventReceivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;

    .line 273
    .local v2, receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->notifyResume(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    goto :goto_0

    .line 275
    .end local v2           #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->toCollection()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    .line 276
    .restart local v2       #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->notifyResume(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    goto :goto_1

    .line 279
    .end local v2           #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->getActiveLayer()Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    move-result-object v0

    .line 280
    .local v0, active:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    if-eqz v0, :cond_2

    .line 281
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->update(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    .line 284
    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->sendTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUnmounted(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Ljava/lang/String;)V
    .locals 4
    .parameter "sender"
    .parameter "storagePath"

    .prologue
    const/4 v3, 0x0

    .line 408
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mEventReceivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;

    .line 409
    .local v1, receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    invoke-virtual {v1, p1, v3}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->notifyChangeStorageState(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Z)V

    goto :goto_0

    .line 411
    .end local v1           #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->toCollection()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    .line 412
    .restart local v1       #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    invoke-virtual {v1, p1, v3}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->notifyChangeStorageState(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Z)V

    goto :goto_1

    .line 414
    .end local v1           #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    :cond_1
    return-void
.end method

.method public onUpdated(Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;I)V
    .locals 7
    .parameter "sender"
    .parameter "current"

    .prologue
    .line 436
    const-string v2, "AppController"

    const-string v3, "AppController#onUpdated:"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 437
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mEventReceivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;

    .line 438
    .local v1, receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->notifyTilting(Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;I)V

    goto :goto_0

    .line 440
    .end local v1           #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->toCollection()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    .line 441
    .restart local v1       #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->notifyTilting(Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;I)V

    goto :goto_1

    .line 443
    .end local v1           #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x0

    .line 446
    if-nez p1, :cond_1

    .line 449
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->getServiceState()Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_3D_SET_DONE:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    if-ne v0, v1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->set3DTVOutput(Z)V

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mTouchEventGuard:Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;->rejectTouchEvent(Z)V

    .line 455
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->setOutputModeOfLayers(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->getServiceState()Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_2D_SET_DONE:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getMode()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->PANORAMA3D:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    if-ne v0, v1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->set3DTVOutput(Z)V

    .line 465
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mTouchEventGuard:Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->isOutput3d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;->rejectTouchEvent(Z)V

    .line 466
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->getOutputMode()Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->setOutputModeOfLayers(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    goto :goto_0
.end method

.method public play()V
    .locals 5

    .prologue
    .line 134
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getCurrentContent()Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    move-result-object v0

    .line 135
    .local v0, current:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayerFactory:Lcom/sonyericsson/android/camera3d/viewer/layer/LayerFactory;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getMpoType()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/LayerFactory;->createPlayerLayer(Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;)Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->getOutputMode()Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->show(Lcom/sonyericsson/android/camera3d/viewer/AppLayer;Lcom/sonyericsson/android/camera3d/viewer/DataStore;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    goto :goto_0
.end method

.method public play(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->setCurrentContent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->play()V

    .line 155
    return-void
.end method

.method public previous()V
    .locals 5

    .prologue
    .line 253
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getCurrentContent()Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    move-result-object v0

    .line 254
    .local v0, content:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getIndex()I

    move-result v1

    .line 258
    .local v1, index:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 259
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->setCurrentContent(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->getActiveLayer()Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    move-result-object v2

    .line 261
    .local v2, layer:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    if-eqz v2, :cond_0

    .line 262
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->update(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    goto :goto_0
.end method

.method public setOutputModeOfLayers(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 3
    .parameter "outputMode"

    .prologue
    .line 386
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mEventReceivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;

    .line 387
    .local v1, receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->notifyChangeHdmiState(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    goto :goto_0

    .line 389
    .end local v1           #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->toCollection()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    .line 390
    .restart local v1       #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->notifyChangeHdmiState(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    goto :goto_1

    .line 392
    .end local v1           #receiver:Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
    :cond_1
    return-void
.end method

.method public startTilting(II)V
    .locals 1
    .parameter "left"
    .parameter "right"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mTiltDetector:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;

    invoke-virtual {v0, p1, p2, p0}, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->start(IILcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltListener;)V

    .line 167
    return-void
.end method

.method public stopTilting()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController;->mTiltDetector:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->stop()V

    .line 171
    return-void
.end method
