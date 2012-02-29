.class public final Lcom/sonyericsson/hardware/UsbDevice;
.super Ljava/lang/Object;
.source "UsbDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/hardware/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_OVER_CURRENT:I = 0x2

.field public static final STATUS_SUPPORTED:I = 0x0

.field public static final STATUS_UNSUPPORTED:I = 0x1


# instance fields
.field private final mConnectedUsbDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/hardware/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceClass:I

.field private final mDevicePath:Ljava/lang/String;

.field private final mDeviceProtocol:I

.field private final mDeviceSubclass:I

.field private final mIdProduct:I

.field private final mIdVendor:I

.field private final mManufacturer:Ljava/lang/String;

.field private final mProductName:Ljava/lang/String;

.field private final mSerial:Ljava/lang/String;

.field private final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lcom/sonyericsson/hardware/UsbDevice$1;

    invoke-direct {v0}, Lcom/sonyericsson/hardware/UsbDevice$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/hardware/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mConnectedUsbDevices:Ljava/util/List;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDevicePath:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mStatus:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceClass:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceSubclass:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mProductName:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mManufacturer:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceProtocol:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mSerial:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mIdVendor:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mIdProduct:I

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mConnectedUsbDevices:Ljava/util/List;

    sget-object v1, Lcom/sonyericsson/hardware/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/hardware/UsbDevice$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/hardware/UsbDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .parameter "devicePath"
    .parameter "status"
    .parameter "deviceClass"
    .parameter "deviceSubclass"
    .parameter "deviceProtocol"
    .parameter "productName"
    .parameter "manufacturer"
    .parameter "serial"
    .parameter "idVendor"
    .parameter "idProduct"

    .prologue
    const-string v1, ""

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mConnectedUsbDevices:Ljava/util/List;

    .line 79
    iput-object p1, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDevicePath:Ljava/lang/String;

    .line 80
    iput p2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mStatus:I

    .line 81
    iput p3, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceClass:I

    .line 82
    iput p4, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceSubclass:I

    .line 83
    if-eqz p6, :cond_0

    move-object v0, p6

    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mProductName:Ljava/lang/String;

    .line 84
    if-eqz p7, :cond_1

    move-object v0, p7

    :goto_1
    iput-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mManufacturer:Ljava/lang/String;

    .line 85
    iput p5, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceProtocol:I

    .line 86
    if-eqz p8, :cond_2

    move-object v0, p8

    :goto_2
    iput-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mSerial:Ljava/lang/String;

    .line 87
    iput p9, p0, Lcom/sonyericsson/hardware/UsbDevice;->mIdVendor:I

    .line 88
    iput p10, p0, Lcom/sonyericsson/hardware/UsbDevice;->mIdProduct:I

    .line 89
    return-void

    .line 83
    :cond_0
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    .line 84
    :cond_1
    const-string v0, ""

    move-object v0, v1

    goto :goto_1

    .line 86
    :cond_2
    const-string v0, ""

    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public addConnection(Lcom/sonyericsson/hardware/UsbDevice;)V
    .locals 1
    .parameter "usbDevice"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mConnectedUsbDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 246
    if-ne p1, p0, :cond_0

    move v2, v5

    .line 260
    :goto_0
    return v2

    .line 248
    :cond_0
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/sonyericsson/hardware/UsbDevice;

    if-eqz v2, :cond_2

    .line 249
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/hardware/UsbDevice;

    move-object v1, v0

    .line 250
    .local v1, other:Lcom/sonyericsson/hardware/UsbDevice;
    iget-object v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDevicePath:Ljava/lang/String;

    iget-object v3, v1, Lcom/sonyericsson/hardware/UsbDevice;->mDevicePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceClass:I

    iget v3, v1, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceClass:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceSubclass:I

    iget v3, v1, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceSubclass:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mProductName:Ljava/lang/String;

    iget-object v3, v1, Lcom/sonyericsson/hardware/UsbDevice;->mProductName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mManufacturer:Ljava/lang/String;

    iget-object v3, v1, Lcom/sonyericsson/hardware/UsbDevice;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceProtocol:I

    iget v3, v1, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceProtocol:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mSerial:Ljava/lang/String;

    iget-object v3, v1, Lcom/sonyericsson/hardware/UsbDevice;->mSerial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mIdVendor:I

    iget v3, v1, Lcom/sonyericsson/hardware/UsbDevice;->mIdVendor:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mIdProduct:I

    iget v3, v1, Lcom/sonyericsson/hardware/UsbDevice;->mIdProduct:I

    if-ne v2, v3, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0

    .end local v1           #other:Lcom/sonyericsson/hardware/UsbDevice;
    :cond_2
    move v2, v4

    .line 260
    goto :goto_0
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/hardware/UsbDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mConnectedUsbDevices:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceClass()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceClass:I

    return v0
.end method

.method public getDeviceProtocol()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceProtocol:I

    return v0
.end method

.method public getDeviceSubclass()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceSubclass:I

    return v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mIdProduct:I

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mStatus:I

    return v0
.end method

.method public getVendorId()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mIdVendor:I

    return v0
.end method

.method public hasDevicePath(Ljava/lang/String;)Z
    .locals 1
    .parameter "devicePath"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDevicePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDevicePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/hardware/UsbDevice;->mProductName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/hardware/UsbDevice;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public removeConnection(Lcom/sonyericsson/hardware/UsbDevice;)V
    .locals 1
    .parameter "usbDevice"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mConnectedUsbDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 230
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "Name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mProductName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nDevice class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceClass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nDevice sub class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceSubclass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nManufacturer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nProtocol "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceProtocol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nSerial "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mSerial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nVendor id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mIdVendor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nProduct id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mIdProduct:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nConnections "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/hardware/UsbDevice;->mConnectedUsbDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDevicePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceSubclass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mProductName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mManufacturer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mDeviceProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mSerial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mIdVendor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mIdProduct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/hardware/UsbDevice;->mConnectedUsbDevices:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 223
    return-void
.end method
