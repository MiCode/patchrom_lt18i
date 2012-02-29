.class public Lcom/android/settings/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    }
.end annotation


# static fields
.field private static GRACE_PERIOD_TO_SHOW_DIALOGS_IN_FOREGROUND:J

.field private static INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mEventRedirector:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

.field private mForegroundActivity:Landroid/app/Activity;

.field private mInitialized:Z

.field private mLastScan:J

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->GRACE_PERIOD_TO_SHOW_DIALOGS_IN_FOREGROUND:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mDialogs:Ljava/util/List;

    .line 74
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mState:I

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    .line 332
    return-void
.end method

.method private dispatchScanningStateChanged(Z)V
    .locals 4
    .parameter "started"

    .prologue
    .line 288
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 289
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;

    .line 290
    .local v0, callback:Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 292
    .end local v0           #callback:Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 2
    .parameter

    .prologue
    .line 99
    const-class v0, Lcom/android/settings/bluetooth/LocalBluetoothManager;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;-><init>()V

    sput-object v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 104
    :cond_0
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->init(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    .line 110
    :goto_0
    return-object v0

    .line 108
    :cond_1
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->init(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 110
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private init(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 115
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mInitialized:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 133
    :goto_0
    return v0

    .line 116
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mInitialized:Z

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 122
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 123
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 128
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mEventRedirector:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    .line 129
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mEventRedirector:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->start()V

    .line 131
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move v0, v1

    .line 133
    goto :goto_0
.end method

.method private syncBluetoothState()V
    .locals 2

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    move v0, v1

    .line 255
    .local v0, bluetoothState:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothStateInt(I)V

    .line 256
    return-void

    .line 248
    .end local v0           #bluetoothState:I
    :cond_0
    const/16 v1, 0xa

    move v0, v1

    goto :goto_0

    .line 252
    :cond_1
    const/high16 v0, -0x8000

    .restart local v0       #bluetoothState:I
    goto :goto_0
.end method


# virtual methods
.method public getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public getBluetoothState()I
    .locals 2

    .prologue
    .line 228
    iget v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mState:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->syncBluetoothState()V

    .line 232
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mState:I

    return v0
.end method

.method public getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDockAutoConnectSetting(Ljava/lang/String;)Z
    .locals 3
    .parameter "addr"

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getForegroundActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public hasDockAutoConnectSetting(Ljava/lang/String;)Z
    .locals 3
    .parameter "addr"

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onScanningStateChanged(Z)V

    .line 284
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->dispatchScanningStateChanged(Z)V

    .line 285
    return-void
.end method

.method persistSelectedDeviceInPicker(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceAddress"

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_selected_device"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    const-string v1, "last_selected_device_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 384
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 385
    return-void
.end method

.method public registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerDialog(Landroid/app/AlertDialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mDialogs:Ljava/util/List;

    monitor-enter v0

    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mDialogs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeDockAutoConnectSetting(Ljava/lang/String;)V
    .locals 3
    .parameter "addr"

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 404
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 405
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 406
    return-void
.end method

.method public saveDockAutoConnectSetting(Ljava/lang/String;Z)V
    .locals 3
    .parameter "addr"
    .parameter "autoConnect"

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 398
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 399
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 400
    return-void
.end method

.method public setBluetoothEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 259
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    move v0, v1

    .line 263
    .local v0, wasSetStateSuccessful:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 264
    if-eqz p1, :cond_1

    const/16 v1, 0xb

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothStateInt(I)V

    .line 276
    :goto_2
    return-void

    .line 259
    .end local v0           #wasSetStateSuccessful:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 264
    .restart local v0       #wasSetStateSuccessful:Z
    :cond_1
    const/16 v1, 0xd

    goto :goto_1

    .line 274
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->syncBluetoothState()V

    goto :goto_2
.end method

.method setBluetoothStateInt(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/16 v1, 0xc

    .line 236
    iput p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mState:I

    .line 237
    if-eq p1, v1, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onBluetoothStateChanged(Z)V

    .line 242
    :cond_1
    return-void

    .line 239
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setForegroundActivity(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 151
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mDialogs:Ljava/util/List;

    monitor-enter v2

    .line 154
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mDialogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 155
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 158
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 157
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mDialogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 158
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    .line 160
    return-void
.end method

.method public shouldShowDialogInForeground(Ljava/lang/String;)Z
    .locals 12
    .parameter "deviceAddress"

    .prologue
    .line 340
    iget-object v8, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    .line 375
    :goto_0
    return v8

    .line 342
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 343
    .local v0, currentTimeMillis:J
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 346
    .local v7, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v8, "discoverable_end_timestamp"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 348
    .local v4, lastDiscoverableEndTime:J
    sget-wide v8, Lcom/android/settings/bluetooth/LocalBluetoothManager;->GRACE_PERIOD_TO_SHOW_DIALOGS_IN_FOREGROUND:J

    add-long/2addr v8, v4

    cmp-long v8, v8, v0

    if-lez v8, :cond_1

    .line 350
    const/4 v8, 0x1

    goto :goto_0

    .line 354
    :cond_1
    iget-object v8, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 355
    const/4 v8, 0x1

    goto :goto_0

    .line 356
    :cond_2
    const-string v8, "last_discovering_time"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sget-wide v10, Lcom/android/settings/bluetooth/LocalBluetoothManager;->GRACE_PERIOD_TO_SHOW_DIALOGS_IN_FOREGROUND:J

    add-long/2addr v8, v10

    cmp-long v8, v8, v0

    if-lez v8, :cond_3

    .line 358
    const/4 v8, 0x1

    goto :goto_0

    .line 362
    :cond_3
    if-eqz p1, :cond_4

    .line 363
    const-string v8, "last_selected_device"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, lastSelectedDevice:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 367
    const-string v8, "last_selected_device_time"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 369
    .local v2, lastDeviceSelectedTime:J
    sget-wide v8, Lcom/android/settings/bluetooth/LocalBluetoothManager;->GRACE_PERIOD_TO_SHOW_DIALOGS_IN_FOREGROUND:J

    add-long/2addr v8, v2

    cmp-long v8, v8, v0

    if-lez v8, :cond_4

    .line 371
    const/4 v8, 0x1

    goto :goto_0

    .line 375
    .end local v2           #lastDeviceSelectedTime:J
    .end local v6           #lastSelectedDevice:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public showError(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 7
    .parameter "device"
    .parameter "titleResId"
    .parameter "messageResId"

    .prologue
    .line 296
    const v4, 0x104000a

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->showError(Landroid/bluetooth/BluetoothDevice;IIILandroid/content/DialogInterface$OnClickListener;I)V

    .line 297
    return-void
.end method

.method public showError(Landroid/bluetooth/BluetoothDevice;IIILandroid/content/DialogInterface$OnClickListener;I)V
    .locals 8
    .parameter "device"
    .parameter "titleResId"
    .parameter "messageResId"
    .parameter "positiveButtonResId"
    .parameter "positiveListener"
    .parameter "negativeButtonResId"

    .prologue
    const/4 v7, 0x1

    .line 301
    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v4, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 302
    .local v1, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    const/4 v3, 0x0

    .line 303
    .local v3, name:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 304
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 306
    :cond_0
    if-nez v3, :cond_1

    .line 307
    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    const v5, 0x7f08011d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 312
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v4, p3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    if-eqz v4, :cond_4

    .line 316
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    const v6, 0x7f0a001b

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 322
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p6, :cond_2

    .line 323
    const/4 v4, 0x0

    invoke-virtual {v0, p6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    .line 330
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_1
    return-void

    .line 310
    .end local v2           #message:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 328
    .restart local v2       #message:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public startScanning(Z)V
    .locals 7
    .parameter "force"

    .prologue
    .line 187
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->dispatchScanningStateChanged(Z)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    if-nez p1, :cond_3

    .line 199
    iget-wide v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLastScan:J

    const-wide/32 v5, 0x493e0

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v2

    .line 205
    .local v2, sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_3

    .line 206
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 207
    .local v1, sink:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 214
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sink:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLastScan:J

    goto :goto_0
.end method

.method public stopScanning()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 224
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 183
    monitor-exit v0

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
