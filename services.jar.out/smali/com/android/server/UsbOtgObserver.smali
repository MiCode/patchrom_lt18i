.class public Lcom/android/server/UsbOtgObserver;
.super Landroid/os/UEventObserver;
.source "UsbOtgObserver.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "ACTION"

.field private static final ADD:Ljava/lang/String; = "add"

.field private static final DEVPATH:Ljava/lang/String; = "DEVPATH"

.field private static final EVENT:Ljava/lang/String; = "EVENT"

.field private static final INFO_DEVICE_OVER_CURRENT:Ljava/lang/String; = "OTG_DEVICE_OVER_CURRENT"

.field private static final INFO_DEVICE_SUPPORTED:Ljava/lang/String; = "OTG_DEVICE_SUPPORTED"

.field private static final MSG_ACA_CONNECTED:I = 0x3

.field private static final MSG_ACA_DISCONNECTED:I = 0x4

.field private static final MSG_DEVICE_CONNECTED:I = 0x0

.field private static final MSG_DEVICE_DISCONNECTED:I = 0x1

.field private static final MSG_ERROR:I = 0x5

.field private static final MSG_UPDATE_OTG_STATE:I = 0x2

.field private static final OTG_DEVICE_UEVENT:Ljava/lang/String; = "uevent"

.field private static final REMOVE:Ljava/lang/String; = "remove"

.field private static final SUBSYSTEM:Ljava/lang/String; = "SUBSYSTEM"

.field private static final SUBSYS_ACA_CONNECTED:Ljava/lang/String; = "ACA_CONNECTED"

.field private static final SUBSYS_ACA_DISCONNECTED:Ljava/lang/String; = "ACA_DISCONNECTED"

.field private static final SUBSYS_USB_OTG:Ljava/lang/String; = "usb_otg"

.field private static final SUBSYS_VBUS_DROP:Ljava/lang/String; = "VBUS_DROP"

.field private static final SYS_PATH:Ljava/lang/String; = "/sys"

.field private static final USB_OTG_DEVICE_PATH:Ljava/lang/String; = "/sys/bus/usb/devices"

.field private static final USB_OTG_UEVENT_MATCH:Ljava/lang/String; = "DEVTYPE=usb_device"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field mRoothub:Lcom/sonyericsson/hardware/UsbDevice;

.field private mSystemReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 40
    const-class v0, Lcom/android/server/UsbOtgObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/UsbOtgObserver;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/UsbOtgObserver;->mRoothub:Lcom/sonyericsson/hardware/UsbDevice;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/UsbOtgObserver;->mSystemReady:Z

    .line 409
    new-instance v0, Lcom/android/server/UsbOtgObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/UsbOtgObserver$1;-><init>(Lcom/android/server/UsbOtgObserver;)V

    iput-object v0, p0, Lcom/android/server/UsbOtgObserver;->mHandler:Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/android/server/UsbOtgObserver;->mContext:Landroid/content/Context;

    .line 100
    const-string v0, "DEVTYPE=usb_device"

    invoke-virtual {p0, v0}, Lcom/android/server/UsbOtgObserver;->startObserving(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/UsbOtgObserver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/server/UsbOtgObserver;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/UsbOtgObserver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/UsbOtgObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addDeviceConnection(Ljava/lang/String;)Lcom/sonyericsson/hardware/UsbDevice;
    .locals 6
    .parameter "path"

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/android/server/UsbOtgObserver;->createUsbDevice(Ljava/lang/String;)Lcom/sonyericsson/hardware/UsbDevice;

    move-result-object v0

    .line 256
    .local v0, device:Lcom/sonyericsson/hardware/UsbDevice;
    iget-object v3, p0, Lcom/android/server/UsbOtgObserver;->mRoothub:Lcom/sonyericsson/hardware/UsbDevice;

    if-eqz v3, :cond_0

    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/UsbOtgObserver;->getHubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, hubPath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/UsbOtgObserver;->mRoothub:Lcom/sonyericsson/hardware/UsbDevice;

    invoke-direct {p0, v3, v2}, Lcom/android/server/UsbOtgObserver;->findDevice(Lcom/sonyericsson/hardware/UsbDevice;Ljava/lang/String;)Lcom/sonyericsson/hardware/UsbDevice;

    move-result-object v1

    .line 262
    .local v1, hub:Lcom/sonyericsson/hardware/UsbDevice;
    if-eqz v1, :cond_1

    .line 263
    invoke-virtual {v1, v0}, Lcom/sonyericsson/hardware/UsbDevice;->addConnection(Lcom/sonyericsson/hardware/UsbDevice;)V

    .line 271
    .end local v1           #hub:Lcom/sonyericsson/hardware/UsbDevice;
    .end local v2           #hubPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 265
    .restart local v1       #hub:Lcom/sonyericsson/hardware/UsbDevice;
    .restart local v2       #hubPath:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 266
    iget-object v3, p0, Lcom/android/server/UsbOtgObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A device add was attempted but no hub was found to host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addDevices()V
    .locals 14

    .prologue
    const-string v13, "Failed to close writer for OTG device: "

    .line 107
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/bus/usb/devices"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 109
    .local v6, otgDevices:[Ljava/io/File;
    if-nez v6, :cond_1

    .line 141
    :cond_0
    return-void

    .line 113
    :cond_1
    array-length v9, v6

    const/4 v10, 0x1

    sub-int v3, v9, v10

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_0

    .line 114
    aget-object v9, v6, v3

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 115
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "uevent"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 117
    const/4 v7, 0x0

    .line 120
    .local v7, writer:Ljava/io/FileWriter;
    :try_start_0
    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v7           #writer:Ljava/io/FileWriter;
    .local v8, writer:Ljava/io/FileWriter;
    :try_start_1
    const-string v9, "add"

    invoke-virtual {v8, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 127
    if-eqz v8, :cond_2

    .line 128
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_2
    move-object v7, v8

    .line 113
    .end local v2           #f:Ljava/io/File;
    .end local v8           #writer:Ljava/io/FileWriter;
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 122
    .restart local v2       #f:Ljava/io/File;
    .restart local v7       #writer:Ljava/io/FileWriter;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 123
    .local v1, e:Ljava/io/IOException;
    :goto_4
    :try_start_3
    iget-object v9, p0, Lcom/android/server/UsbOtgObserver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to write to OTG device: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    if-eqz v7, :cond_3

    .line 128
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 130
    :catch_1
    move-exception v1

    .line 131
    iget-object v9, p0, Lcom/android/server/UsbOtgObserver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close writer for OTG device: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 126
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 127
    :goto_5
    if-eqz v7, :cond_4

    .line 128
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 126
    :cond_4
    :goto_6
    throw v9

    .line 114
    .end local v7           #writer:Ljava/io/FileWriter;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 130
    .restart local v7       #writer:Ljava/io/FileWriter;
    :catch_2
    move-exception v1

    .line 131
    .restart local v1       #e:Ljava/io/IOException;
    iget-object v10, p0, Lcom/android/server/UsbOtgObserver;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to close writer for OTG device: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 130
    .end local v1           #e:Ljava/io/IOException;
    .end local v7           #writer:Ljava/io/FileWriter;
    .restart local v8       #writer:Ljava/io/FileWriter;
    :catch_3
    move-exception v1

    .line 131
    .restart local v1       #e:Ljava/io/IOException;
    iget-object v9, p0, Lcom/android/server/UsbOtgObserver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close writer for OTG device: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 126
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8           #writer:Ljava/io/FileWriter;
    .restart local v7       #writer:Ljava/io/FileWriter;
    goto :goto_5

    .line 122
    .end local v7           #writer:Ljava/io/FileWriter;
    .restart local v8       #writer:Ljava/io/FileWriter;
    :catch_4
    move-exception v9

    move-object v1, v9

    move-object v7, v8

    .end local v8           #writer:Ljava/io/FileWriter;
    .restart local v7       #writer:Ljava/io/FileWriter;
    goto/16 :goto_4
.end method

.method private createUsbDevice(Ljava/lang/String;)Lcom/sonyericsson/hardware/UsbDevice;
    .locals 12
    .parameter "path"

    .prologue
    .line 330
    const-string v0, "bDeviceClass"

    invoke-direct {p0, p1, v0}, Lcom/android/server/UsbOtgObserver;->readHexInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 331
    .local v3, deviceClass:I
    const-string v0, "bDeviceSubClass"

    invoke-direct {p0, p1, v0}, Lcom/android/server/UsbOtgObserver;->readHexInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 332
    .local v4, deviceSubclass:I
    const-string v0, "bDeviceProtocol"

    invoke-direct {p0, p1, v0}, Lcom/android/server/UsbOtgObserver;->readHexInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 333
    .local v5, deviceProtocol:I
    const-string v0, "idVendor"

    invoke-direct {p0, p1, v0}, Lcom/android/server/UsbOtgObserver;->readHexInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 334
    .local v9, idVendor:I
    const-string v0, "idProduct"

    invoke-direct {p0, p1, v0}, Lcom/android/server/UsbOtgObserver;->readHexInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 335
    .local v10, idProduct:I
    const-string v0, "product"

    invoke-direct {p0, p1, v0}, Lcom/android/server/UsbOtgObserver;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, productName:Ljava/lang/String;
    const-string v0, "manufacturer"

    invoke-direct {p0, p1, v0}, Lcom/android/server/UsbOtgObserver;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 337
    .local v7, manufacturer:Ljava/lang/String;
    const-string v0, "serial"

    invoke-direct {p0, p1, v0}, Lcom/android/server/UsbOtgObserver;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 338
    .local v8, serial:Ljava/lang/String;
    const-string v0, "otg_dev_info"

    invoke-direct {p0, p1, v0}, Lcom/android/server/UsbOtgObserver;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 340
    .local v11, info:Ljava/lang/String;
    const/4 v2, 0x1

    .line 342
    .local v2, status:I
    const-string v0, "OTG_DEVICE_SUPPORTED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    const/4 v2, 0x0

    .line 348
    :cond_0
    :goto_0
    new-instance v0, Lcom/sonyericsson/hardware/UsbDevice;

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/sonyericsson/hardware/UsbDevice;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0

    .line 344
    :cond_1
    const-string v0, "OTG_DEVICE_OVER_CURRENT"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private dispatchMessage(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 241
    iget-boolean v1, p0, Lcom/android/server/UsbOtgObserver;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/server/UsbOtgObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 243
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/UsbOtgObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 245
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private dispatchMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "object"

    .prologue
    .line 234
    iget-boolean v1, p0, Lcom/android/server/UsbOtgObserver;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/server/UsbOtgObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 236
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/UsbOtgObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 238
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private findDevice(Lcom/sonyericsson/hardware/UsbDevice;Ljava/lang/String;)Lcom/sonyericsson/hardware/UsbDevice;
    .locals 5
    .parameter "usbDevice"
    .parameter "devicePath"

    .prologue
    .line 306
    const/4 v1, 0x0

    .line 307
    .local v1, device:Lcom/sonyericsson/hardware/UsbDevice;
    if-eqz p1, :cond_3

    .line 308
    invoke-virtual {p1, p2}, Lcom/sonyericsson/hardware/UsbDevice;->hasDevicePath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    move-object v1, p1

    .line 321
    :cond_0
    :goto_0
    return-object v1

    .line 311
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/hardware/UsbDevice;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/hardware/UsbDevice;

    .line 312
    .local v0, childDevice:Lcom/sonyericsson/hardware/UsbDevice;
    invoke-direct {p0, v0, p2}, Lcom/android/server/UsbOtgObserver;->findDevice(Lcom/sonyericsson/hardware/UsbDevice;Ljava/lang/String;)Lcom/sonyericsson/hardware/UsbDevice;

    move-result-object v1

    .line 313
    if-eqz v1, :cond_2

    goto :goto_0

    .line 319
    .end local v0           #childDevice:Lcom/sonyericsson/hardware/UsbDevice;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Lcom/android/server/UsbOtgObserver;->TAG:Ljava/lang/String;

    const-string v4, "findDevice: First parameter usbDevice is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getHubPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 399
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 401
    .local v0, slashIndex:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 402
    const-string v1, ""

    .line 404
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private handleUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const-string v5, "DEVPATH"

    const-string v5, "/sys"

    .line 164
    const-string v5, "ACTION"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, action:Ljava/lang/String;
    const-string v5, "add"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 168
    monitor-enter p0

    .line 170
    :try_start_0
    const-string v5, "DEVPATH"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sys"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/UsbOtgObserver;->addDeviceConnection(Ljava/lang/String;)Lcom/sonyericsson/hardware/UsbDevice;

    move-result-object v1

    .line 176
    .local v1, device:Lcom/sonyericsson/hardware/UsbDevice;
    if-eqz v1, :cond_0

    .line 178
    iget-object v5, p0, Lcom/android/server/UsbOtgObserver;->mRoothub:Lcom/sonyericsson/hardware/UsbDevice;

    if-nez v5, :cond_3

    .line 179
    iput-object v1, p0, Lcom/android/server/UsbOtgObserver;->mRoothub:Lcom/sonyericsson/hardware/UsbDevice;

    .line 183
    :goto_0
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/server/UsbOtgObserver;->mRoothub:Lcom/sonyericsson/hardware/UsbDevice;

    invoke-direct {p0, v5, v6}, Lcom/android/server/UsbOtgObserver;->dispatchMessage(ILjava/lang/Object;)V

    .line 186
    .end local v1           #device:Lcom/sonyericsson/hardware/UsbDevice;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .end local v2           #path:Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v5, "SUBSYSTEM"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, subSys:Ljava/lang/String;
    const-string v5, "usb_otg"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 221
    const-string v5, "EVENT"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, subSysEvent:Ljava/lang/String;
    const-string v5, "ACA_CONNECTED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 224
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/server/UsbOtgObserver;->dispatchMessage(I)V

    .line 231
    .end local v4           #subSysEvent:Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 181
    .end local v3           #subSys:Ljava/lang/String;
    .restart local v1       #device:Lcom/sonyericsson/hardware/UsbDevice;
    .restart local v2       #path:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    :try_start_1
    invoke-direct {p0, v5, v1}, Lcom/android/server/UsbOtgObserver;->dispatchMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 186
    .end local v1           #device:Lcom/sonyericsson/hardware/UsbDevice;
    .end local v2           #path:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 188
    :cond_4
    const-string v5, "remove"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    monitor-enter p0

    .line 192
    :try_start_2
    iget-object v5, p0, Lcom/android/server/UsbOtgObserver;->mRoothub:Lcom/sonyericsson/hardware/UsbDevice;

    if-eqz v5, :cond_7

    .line 194
    const-string v5, "DEVPATH"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .restart local v2       #path:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sys"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/UsbOtgObserver;->removeDeviceConnection(Ljava/lang/String;)Lcom/sonyericsson/hardware/UsbDevice;

    move-result-object v1

    .line 200
    .restart local v1       #device:Lcom/sonyericsson/hardware/UsbDevice;
    if-eqz v1, :cond_5

    .line 201
    iget-object v5, p0, Lcom/android/server/UsbOtgObserver;->mRoothub:Lcom/sonyericsson/hardware/UsbDevice;

    if-ne v1, v5, :cond_6

    .line 202
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/UsbOtgObserver;->mRoothub:Lcom/sonyericsson/hardware/UsbDevice;

    .line 206
    :goto_3
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/server/UsbOtgObserver;->mRoothub:Lcom/sonyericsson/hardware/UsbDevice;

    invoke-direct {p0, v5, v6}, Lcom/android/server/UsbOtgObserver;->dispatchMessage(ILjava/lang/Object;)V

    .line 214
    .end local v1           #device:Lcom/sonyericsson/hardware/UsbDevice;
    .end local v2           #path:Ljava/lang/String;
    :cond_5
    :goto_4
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 204
    .restart local v1       #device:Lcom/sonyericsson/hardware/UsbDevice;
    .restart local v2       #path:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x1

    :try_start_3
    invoke-direct {p0, v5, v1}, Lcom/android/server/UsbOtgObserver;->dispatchMessage(ILjava/lang/Object;)V

    goto :goto_3

    .line 211
    .end local v1           #device:Lcom/sonyericsson/hardware/UsbDevice;
    .end local v2           #path:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/server/UsbOtgObserver;->TAG:Ljava/lang/String;

    const-string v6, "A device removal event was recieved but no root hub was previously reported"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 225
    .restart local v3       #subSys:Ljava/lang/String;
    .restart local v4       #subSysEvent:Ljava/lang/String;
    :cond_8
    const-string v5, "ACA_DISCONNECTED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 226
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/android/server/UsbOtgObserver;->dispatchMessage(I)V

    goto :goto_2

    .line 227
    :cond_9
    const-string v5, "VBUS_DROP"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 228
    const/4 v5, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/UsbOtgObserver;->dispatchMessage(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method private readHexInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "dir"
    .parameter "txtFile"

    .prologue
    .line 384
    invoke-direct {p0, p1, p2}, Lcom/android/server/UsbOtgObserver;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, str:Ljava/lang/String;
    const/16 v2, 0x10

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 389
    :goto_0
    return v2

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "dir"
    .parameter "txtFile"

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, br:Ljava/io/BufferedReader;
    const-string v3, ""

    .line 360
    .local v3, line:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x100

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 361
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v3

    .line 367
    if-eqz v1, :cond_0

    .line 369
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v0, v1

    .line 375
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v3

    .line 362
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 363
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    iget-object v4, p0, Lcom/android/server/UsbOtgObserver;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 367
    if-eqz v0, :cond_1

    .line 369
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 370
    :catch_1
    move-exception v2

    .line 371
    .local v2, e:Ljava/io/IOException;
    const-string v3, ""

    :goto_3
    goto :goto_1

    .line 364
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 365
    .restart local v2       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    iget-object v4, p0, Lcom/android/server/UsbOtgObserver;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 367
    if-eqz v0, :cond_1

    .line 369
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 370
    :catch_3
    move-exception v2

    .line 371
    const-string v3, ""

    goto :goto_3

    .line 367
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v0, :cond_2

    .line 369
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 367
    :cond_2
    :goto_6
    throw v4

    .line 370
    :catch_4
    move-exception v2

    .line 371
    .restart local v2       #e:Ljava/io/IOException;
    const-string v3, ""

    goto :goto_6

    .line 370
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    .line 371
    .restart local v2       #e:Ljava/io/IOException;
    const-string v3, ""

    goto :goto_0

    .line 367
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 364
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_6
    move-exception v4

    move-object v2, v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 362
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_7
    move-exception v4

    move-object v2, v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private removeDeviceConnection(Ljava/lang/String;)Lcom/sonyericsson/hardware/UsbDevice;
    .locals 6
    .parameter "path"

    .prologue
    .line 280
    iget-object v3, p0, Lcom/android/server/UsbOtgObserver;->mRoothub:Lcom/sonyericsson/hardware/UsbDevice;

    invoke-direct {p0, v3, p1}, Lcom/android/server/UsbOtgObserver;->findDevice(Lcom/sonyericsson/hardware/UsbDevice;Ljava/lang/String;)Lcom/sonyericsson/hardware/UsbDevice;

    move-result-object v0

    .line 282
    .local v0, device:Lcom/sonyericsson/hardware/UsbDevice;
    if-eqz v0, :cond_1

    .line 284
    invoke-direct {p0, p1}, Lcom/android/server/UsbOtgObserver;->getHubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, hubPath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/UsbOtgObserver;->mRoothub:Lcom/sonyericsson/hardware/UsbDevice;

    invoke-direct {p0, v3, v2}, Lcom/android/server/UsbOtgObserver;->findDevice(Lcom/sonyericsson/hardware/UsbDevice;Ljava/lang/String;)Lcom/sonyericsson/hardware/UsbDevice;

    move-result-object v1

    .line 288
    .local v1, hub:Lcom/sonyericsson/hardware/UsbDevice;
    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v1, v0}, Lcom/sonyericsson/hardware/UsbDevice;->removeConnection(Lcom/sonyericsson/hardware/UsbDevice;)V

    .line 297
    .end local v1           #hub:Lcom/sonyericsson/hardware/UsbDevice;
    .end local v2           #hubPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 293
    :cond_1
    iget-object v3, p0, Lcom/android/server/UsbOtgObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A device removal was attempted but "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was not found to be connected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 151
    iget-boolean v1, p0, Lcom/android/server/UsbOtgObserver;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 156
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/UsbOtgObserver;->handleUEvent(Landroid/os/UEventObserver$UEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/UsbOtgObserver;->TAG:Ljava/lang/String;

    const-string v2, "Fatal error when handling USB OTG event"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized systemReady()V
    .locals 2

    .prologue
    .line 144
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/UsbOtgObserver;->mSystemReady:Z

    .line 145
    invoke-direct {p0}, Lcom/android/server/UsbOtgObserver;->addDevices()V

    .line 146
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/UsbOtgObserver;->mRoothub:Lcom/sonyericsson/hardware/UsbDevice;

    invoke-direct {p0, v0, v1}, Lcom/android/server/UsbOtgObserver;->dispatchMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
