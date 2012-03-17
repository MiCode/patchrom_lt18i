.class public Lcom/sonyericsson/android/camera3d/exif/ExifFactory;
.super Ljava/lang/Object;
.source "ExifFactory.java"


# static fields
.field private static APP1_HEADER:[B = null

.field private static APP1_LENGTH:I = 0x0

.field private static EXIF_IFD:[B = null

.field private static FIRST_IFD:[B = null

.field private static GPS_IFD:[B = null

.field private static final TAG:Ljava/lang/String; = "ExifFactory"

.field private static TIFF_HEADER:[B

.field private static ZERO_IFD:[B

.field private static ZERO_IFD_INT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->TIFF_HEADER:[B

    .line 31
    const/16 v0, 0xce

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->ZERO_IFD:[B

    .line 52
    const/16 v0, 0xa6

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->EXIF_IFD:[B

    .line 69
    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->ZERO_IFD_INT:[B

    .line 74
    const/16 v0, 0x110

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->GPS_IFD:[B

    .line 105
    const/16 v0, 0x6a

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->FIRST_IFD:[B

    .line 118
    sget-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->TIFF_HEADER:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->ZERO_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->EXIF_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->ZERO_IFD_INT:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->GPS_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->FIRST_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_LENGTH:I

    return-void

    .line 29
    nop

    :array_0
    .array-data 0x1
        0xfft
        0xe1t
        0x3t
        0x1bt
        0x45t
        0x78t
        0x69t
        0x66t
        0x0t
        0x0t
    .end array-data

    .line 30
    nop

    :array_1
    .array-data 0x1
        0x4dt
        0x4dt
        0x0t
        0x2at
        0x0t
        0x0t
        0x0t
        0x8t
    .end array-data

    .line 31
    :array_2
    .array-data 0x1
        0x0t
        0xat
        0x1t
        0xft
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0xet
        0x0t
        0x0t
        0x0t
        0x86t
        0x1t
        0x10t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1et
        0x0t
        0x0t
        0x0t
        0x94t
        0x1t
        0x12t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x0t
        0x1t
        0x1at
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xb2t
        0x1t
        0x1bt
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xbat
        0x1t
        0x28t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x1t
        0x32t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0xc2t
        0x2t
        0x13t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x87t
        0x69t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xd6t
        0x88t
        0x25t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x9at
        0x0t
        0x0t
        0x2t
        0xaat
        0x53t
        0x6ft
        0x6et
        0x79t
        0x20t
        0x45t
        0x72t
        0x69t
        0x63t
        0x73t
        0x73t
        0x6ft
        0x6et
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
    .end array-data

    .line 52
    nop

    :array_3
    .array-data 0x1
        0x0t
        0x9t
        0x90t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x30t
        0x32t
        0x32t
        0x30t
        0x90t
        0x3t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x1t
        0x54t
        0x90t
        0x4t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x1t
        0x68t
        0x91t
        0x1t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x1t
        0x2t
        0x3t
        0x0t
        0xa0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x30t
        0x31t
        0x30t
        0x30t
        0xa0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0xa0t
        0x2t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0xct
        0xc0t
        0xa0t
        0x3t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0xa0t
        0x5t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
    .end array-data

    .line 69
    nop

    :array_4
    .array-data 0x1
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x4t
        0x52t
        0x39t
        0x38t
        0x0t
        0x0t
        0x2t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x30t
        0x31t
        0x30t
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 74
    nop

    :array_5
    .array-data 0x1
        0x0t
        0xct
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x4t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x4et
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x2t
        0x30t
        0x0t
        0x3t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x2t
        0x48t
        0x0t
        0x5t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x2t
        0x60t
        0x0t
        0x7t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x2t
        0x68t
        0x0t
        0x9t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
        0x12t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x2t
        0x80t
        0x0t
        0x1bt
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x8at
        0x0t
        0x1dt
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0xbt
        0x0t
        0x0t
        0x2t
        0x9et
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x57t
        0x47t
        0x53t
        0x2dt
        0x38t
        0x34t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x0t
        0x0t
    .end array-data

    .line 105
    :array_6
    .array-data 0x1
        0x0t
        0x7t
        0x1t
        0x3t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x0t
        0x1t
        0x12t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x0t
        0x1t
        0x1at
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x3t
        0x4t
        0x1t
        0x1bt
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x3t
        0xct
        0x1t
        0x28t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x2t
        0x1t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x3t
        0x14t
        0x2t
        0x2t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkArguments([BLcom/sonyericsson/android/camera3d/exif/ExifOption;)V
    .locals 6
    .parameter "buffer"
    .parameter "option"

    .prologue
    .line 152
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mDateTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mThumbnailData:[B

    if-nez v0, :cond_1

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mGPSOption:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mGPSOption:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mGPSOption:Landroid/location/Location;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 164
    :cond_2
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mThumbnailData:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mThumbnailDataLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "thumbnail data length too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_3
    array-length v0, p0

    int-to-long v0, v0

    sget v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_LENGTH:I

    int-to-long v2, v2

    iget-wide v4, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mThumbnailDataLength:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_4
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mDateTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "YYYY:MM:DD hh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 171
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "model or datetime too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_6
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_7

    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mDateTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "YYYY:MM:DD hh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_8

    .line 174
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "model or datetime too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_8
    return-void
.end method

.method private static fillNullValue([BII)V
    .locals 3
    .parameter "buffer"
    .parameter "bufferPos"
    .parameter "count"

    .prologue
    .line 358
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 359
    add-int v1, p1, v0

    const/4 v2, 0x0

    aput-byte v2, p0, v1

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_0
    return-void
.end method

.method public static generate([BLcom/sonyericsson/android/camera3d/exif/ExifOption;)I
    .locals 5
    .parameter "buffer"
    .parameter "option"

    .prologue
    .line 132
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->checkArguments([BLcom/sonyericsson/android/camera3d/exif/ExifOption;)V

    .line 134
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeTemplate([B)I

    move-result v0

    .line 136
    .local v0, last:I
    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mModel:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->updateModel([BLjava/lang/String;)V

    .line 137
    iget v1, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mOrientation:I

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->updateOrientation([BI)V

    .line 138
    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mDateTime:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->updateDateTime([BLjava/lang/String;)V

    .line 139
    iget-wide v1, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mPixelXDimension:J

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->updatePixelXDimension([BJ)V

    .line 140
    iget-wide v1, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mPixelYDimension:J

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->updatePixelYDimension([BJ)V

    .line 141
    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mGPSOption:Landroid/location/Location;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->updateGpsFields([BLandroid/location/Location;)V

    .line 142
    iget-wide v1, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mThumbnailDataLength:J

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->updateJpegInterchangeFormatLength([BJ)V

    .line 143
    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mThumbnailData:[B

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mThumbnailDataLength:J

    long-to-int v3, v3

    invoke-static {v1, v2, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    int-to-long v1, v0

    iget-wide v3, p1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mThumbnailDataLength:J

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 145
    add-int/lit8 v1, v0, -0x2

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->updateExifSize([BI)V

    .line 147
    return v0
.end method

.method public static getLength()I
    .locals 1

    .prologue
    .line 121
    sget v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_LENGTH:I

    return v0
.end method

.method private static removeGpsInfoFromHeader([B)V
    .locals 3
    .parameter "buffer"

    .prologue
    .line 297
    sget-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x9

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeShortValue([BII)V

    .line 298
    sget-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x76

    const/16 v1, 0xb

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->fillNullValue([BII)V

    .line 299
    sget-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x76

    const-wide/16 v1, 0x2aa

    invoke-static {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeLongValue([BIJ)V

    .line 300
    sget-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x19a

    const/16 v1, 0x110

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->fillNullValue([BII)V

    .line 301
    return-void
.end method

.method private static updateDateTime([BLjava/lang/String;)V
    .locals 1
    .parameter "buffer"
    .parameter "dateTime"

    .prologue
    .line 189
    sget-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0xc2

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 190
    sget-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x154

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 191
    sget-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x168

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 192
    return-void
.end method

.method private static updateExifSize([BI)V
    .locals 1
    .parameter "buffer"
    .parameter "size"

    .prologue
    .line 308
    sget-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x8

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeShortValue([BII)V

    .line 309
    return-void
.end method

.method private static updateGpsFields([BLandroid/location/Location;)V
    .locals 1
    .parameter "buffer"
    .parameter "location"

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 205
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeGpsInfoToHeader([BLandroid/location/Location;)Z

    move-result v0

    .line 206
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 214
    .end local v0           #ret:Z
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->removeGpsInfoFromHeader([B)V

    goto :goto_0
.end method

.method private static updateJpegInterchangeFormatLength([BJ)V
    .locals 1
    .parameter "buffer"
    .parameter "thumbnailDataLength"

    .prologue
    .line 304
    sget-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x2fc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeLongValue([BIJ)V

    .line 305
    return-void
.end method

.method private static updateModel([BLjava/lang/String;)V
    .locals 4
    .parameter "buffer"
    .parameter "value"

    .prologue
    .line 179
    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    add-int/lit16 v1, v1, 0x94

    invoke-static {p0, v1, p1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    move-result v0

    .line 180
    .local v0, length:I
    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1a

    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-static {p0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeLongValue([BIJ)V

    .line 181
    return-void
.end method

.method private static updateOrientation([BI)V
    .locals 1
    .parameter "buffer"
    .parameter "orientation"

    .prologue
    .line 184
    sget-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2a

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeShortValue([BII)V

    .line 185
    sget-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x2c0

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeShortValue([BII)V

    .line 186
    return-void
.end method

.method private static updatePixelXDimension([BJ)V
    .locals 1
    .parameter "buffer"
    .parameter "pixelXDimension"

    .prologue
    .line 195
    sget-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x134

    add-int/lit8 v0, v0, -0xc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeLongValue([BIJ)V

    .line 196
    return-void
.end method

.method private static updatePixelYDimension([BJ)V
    .locals 1
    .parameter "buffer"
    .parameter "pixelYDimension"

    .prologue
    .line 199
    sget-object v0, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x140

    add-int/lit8 v0, v0, -0xc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeLongValue([BIJ)V

    .line 200
    return-void
.end method

.method private static writeASCIIValue([BILjava/lang/String;)I
    .locals 3
    .parameter "buffer"
    .parameter "bufferPos"
    .parameter "value"

    .prologue
    .line 331
    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 332
    .local v0, dst:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    array-length v1, v0

    return v1
.end method

.method private static writeByteValue([BII)V
    .locals 2
    .parameter "buffer"
    .parameter "bufferPos"
    .parameter "value"

    .prologue
    .line 337
    add-int/lit8 v0, p1, 0x0

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 338
    return-void
.end method

.method private static writeGpsInfoToHeader([BLandroid/location/Location;)Z
    .locals 21
    .parameter "buffer"
    .parameter "location"

    .prologue
    .line 218
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 219
    .local v10, calendar:Ljava/util/Calendar;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    .line 222
    .local v13, latitude:D
    const-wide/16 v2, 0x0

    cmpg-double v2, v13, v2

    if-gez v2, :cond_0

    .line 223
    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1b0

    const-string v3, "S"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 226
    :cond_0
    const/16 v16, 0x0

    .line 228
    .local v16, latitudeStr:Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_0
    invoke-static {v13, v14, v2}, Landroid/location/Location;->convert(DI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 233
    const-string v2, ":"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 236
    .local v15, latitudeParts:[Ljava/lang/String;
    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x230

    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeRationalValue([BIJJ)V

    .line 237
    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x238

    const/4 v2, 0x1

    aget-object v2, v15, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeRationalValue([BIJJ)V

    .line 238
    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x240

    const/4 v2, 0x2

    aget-object v2, v15, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v4, 0x447a

    mul-float/2addr v2, v4

    float-to-long v4, v2

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeRationalValue([BIJJ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v17

    .line 245
    .local v17, longitude:D
    const-wide/16 v2, 0x0

    cmpg-double v2, v17, v2

    if-gez v2, :cond_1

    .line 246
    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1c8

    const-string v3, "W"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 249
    :cond_1
    const/16 v20, 0x0

    .line 251
    .local v20, longitudeStr:Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_2
    move-wide/from16 v0, v17

    invoke-static {v0, v1, v2}, Landroid/location/Location;->convert(DI)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v20

    .line 257
    const-string v2, ":"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 260
    .local v19, longitudeParts:[Ljava/lang/String;
    :try_start_3
    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x248

    const/4 v2, 0x0

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeRationalValue([BIJJ)V

    .line 261
    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x250

    const/4 v2, 0x1

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeRationalValue([BIJJ)V

    .line 262
    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x258

    const/4 v2, 0x2

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v4, 0x447a

    mul-float/2addr v2, v4

    float-to-long v4, v2

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeRationalValue([BIJJ)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    .line 269
    .local v8, altitude:D
    const-wide/16 v2, 0x0

    cmpg-double v2, v8, v2

    if-gez v2, :cond_2

    .line 270
    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1e0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeByteValue([BII)V

    .line 272
    :cond_2
    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x260

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v4, v8

    double-to-long v4, v4

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeRationalValue([BIJJ)V

    .line 275
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 277
    const/4 v12, 0x0

    .line 279
    .local v12, gpsDateStamp:Ljava/lang/String;
    :try_start_4
    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x268

    const/16 v2, 0xb

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeRationalValue([BIJJ)V

    .line 280
    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x270

    const/16 v2, 0xc

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeRationalValue([BIJJ)V

    .line 281
    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x278

    const/16 v2, 0xd

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeRationalValue([BIJJ)V

    .line 283
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%04d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v12

    .line 290
    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x29e

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 292
    const/4 v2, 0x1

    .end local v8           #altitude:D
    .end local v12           #gpsDateStamp:Ljava/lang/String;
    .end local v15           #latitudeParts:[Ljava/lang/String;
    .end local v17           #longitude:D
    .end local v19           #longitudeParts:[Ljava/lang/String;
    .end local v20           #longitudeStr:Ljava/lang/String;
    :goto_0
    return v2

    .line 229
    :catch_0
    move-exception v11

    .line 231
    .local v11, e:Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0

    .line 239
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    .restart local v15       #latitudeParts:[Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 241
    .local v11, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0

    .line 252
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .restart local v17       #longitude:D
    .restart local v20       #longitudeStr:Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 254
    .local v11, e:Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0

    .line 263
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    .restart local v19       #longitudeParts:[Ljava/lang/String;
    :catch_3
    move-exception v11

    .line 265
    .local v11, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0

    .line 285
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #altitude:D
    .restart local v12       #gpsDateStamp:Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 287
    .local v11, e:Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static writeLongValue([BIJ)V
    .locals 5
    .parameter "buffer"
    .parameter "bufferPos"
    .parameter "value"

    .prologue
    const-wide/16 v3, 0x100

    .line 346
    add-int/lit8 v0, p1, 0x0

    const-wide/32 v1, 0x1000000

    div-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 347
    add-int/lit8 v0, p1, 0x1

    const-wide/32 v1, 0x10000

    div-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 348
    add-int/lit8 v0, p1, 0x2

    div-long v1, p2, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 349
    add-int/lit8 v0, p1, 0x3

    rem-long v1, p2, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 350
    return-void
.end method

.method private static writeRationalValue([BIJJ)V
    .locals 1
    .parameter "buffer"
    .parameter "bufferPos"
    .parameter "denominator"
    .parameter "numerator"

    .prologue
    .line 353
    add-int/lit8 v0, p1, 0x0

    invoke-static {p0, v0, p2, p3}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeLongValue([BIJ)V

    .line 354
    add-int/lit8 v0, p1, 0x4

    invoke-static {p0, v0, p4, p5}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->writeLongValue([BIJ)V

    .line 355
    return-void
.end method

.method private static writeShortValue([BII)V
    .locals 2
    .parameter "buffer"
    .parameter "bufferPos"
    .parameter "value"

    .prologue
    .line 341
    add-int/lit8 v0, p1, 0x0

    div-int/lit16 v1, p2, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 342
    add-int/lit8 v0, p1, 0x1

    rem-int/lit16 v1, p2, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 343
    return-void
.end method

.method private static writeTemplate([B)I
    .locals 4
    .parameter "buffer"

    .prologue
    const/4 v3, 0x0

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, last:I
    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 315
    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->TIFF_HEADER:[B

    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->TIFF_HEADER:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->TIFF_HEADER:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 317
    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->ZERO_IFD:[B

    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->ZERO_IFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->ZERO_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 319
    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->EXIF_IFD:[B

    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->EXIF_IFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->EXIF_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 321
    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->ZERO_IFD_INT:[B

    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->ZERO_IFD_INT:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->ZERO_IFD_INT:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 323
    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->GPS_IFD:[B

    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->GPS_IFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->GPS_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 325
    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->FIRST_IFD:[B

    sget-object v2, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->FIRST_IFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    sget-object v1, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->FIRST_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 327
    return v0
.end method
