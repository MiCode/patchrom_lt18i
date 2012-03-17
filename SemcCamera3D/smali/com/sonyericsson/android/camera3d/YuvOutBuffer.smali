.class public Lcom/sonyericsson/android/camera3d/YuvOutBuffer;
.super Ljava/lang/Object;
.source "YuvOutBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/YuvOutBuffer$1;,
        Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;,
        Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;,
        Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;,
        Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;
    }
.end annotation


# static fields
.field public static final INDEX_MULTIANGLE_START:I = 0x2

.field public static final INDEX_PANORAMA_LEFT:I = 0x0

.field public static final INDEX_PANORAMA_RIGHT:I = 0x1

.field public static final OUTBUFFER_NUM_MULTIANGLE:I = 0xf

.field private static final TAG:Ljava/lang/String; = "YuvOutBuffer"

.field private static sInstance:Lcom/sonyericsson/android/camera3d/YuvOutBuffer;


# instance fields
.field private mOutImageBufferLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

.field private mOutImageBufferRight:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

.field private mOutImageBuffersMA:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

.field private mType:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->sInstance:Lcom/sonyericsson/android/camera3d/YuvOutBuffer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    return-void
.end method

.method public static convertNativeByteArrayToByteArray(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;[B)[B
    .locals 1
    .parameter "srcBuffer"
    .parameter "workArea"

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->getLength()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->readFrom([BI)V

    .line 842
    return-object p1
.end method

.method public static getInstance()Lcom/sonyericsson/android/camera3d/YuvOutBuffer;
    .locals 1

    .prologue
    .line 659
    sget-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->sInstance:Lcom/sonyericsson/android/camera3d/YuvOutBuffer;

    return-object v0
.end method


# virtual methods
.method public createOutBuffers(IFIIIILandroid/hardware/Camera$Size;Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;)V
    .locals 11
    .parameter "imageSize"
    .parameter "pixelDepth"
    .parameter "pictureSweepLength"
    .parameter "breadth"
    .parameter "orientation"
    .parameter "direction"
    .parameter "previewSize"
    .parameter "bufferType"

    .prologue
    .line 677
    monitor-enter p0

    .line 678
    :try_start_0
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mType:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    .line 679
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    monitor-enter p0

    .line 684
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBuffersMA:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    if-nez v1, :cond_0

    .line 685
    const v1, 0x4a0ca000

    mul-float/2addr v1, p2

    float-to-int v9, v1

    .line 687
    .local v9, bufferSize:I
    const/16 v1, 0xf

    new-array v1, v1, [Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBuffersMA:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    .line 688
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    const/16 v1, 0xf

    if-ge v10, v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBuffersMA:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    new-instance v2, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    const/4 v3, 0x0

    invoke-direct {v2, v9, v3}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;-><init>(ILcom/sonyericsson/android/camera3d/YuvOutBuffer$1;)V

    aput-object v2, v1, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 688
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 679
    .end local v9           #bufferSize:I
    .end local v10           #i:I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 696
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferRight:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    if-nez v1, :cond_1

    .line 697
    const v1, 0x4abfe000

    mul-float/2addr v1, p2

    float-to-int v9, v1

    .line 699
    .restart local v9       #bufferSize:I
    new-instance v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    const/4 v2, 0x0

    invoke-direct {v1, v9, v2}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;-><init>(ILcom/sonyericsson/android/camera3d/YuvOutBuffer$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferRight:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    .line 705
    .end local v9           #bufferSize:I
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    if-nez v1, :cond_2

    .line 706
    const v1, 0x4abfe000

    mul-float/2addr v1, p2

    float-to-int v9, v1

    .line 708
    .restart local v9       #bufferSize:I
    new-instance v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    const/4 v2, 0x0

    invoke-direct {v1, v9, v2}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;-><init>(ILcom/sonyericsson/android/camera3d/YuvOutBuffer$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    .line 715
    .end local v9           #bufferSize:I
    :cond_2
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_1
    const/16 v1, 0xf

    if-ge v10, v1, :cond_3

    .line 716
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBuffersMA:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    aget-object v1, v1, v10

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBuffersMA:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    aget-object v2, v2, v10

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->getLength()I

    move-result v4

    const/16 v5, 0x780

    const/4 v8, 0x0

    move/from16 v2, p5

    move/from16 v3, p6

    move v6, p4

    move-object/from16 v7, p7

    invoke-virtual/range {v1 .. v8}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->setPictureAttributes(IIIIILandroid/hardware/Camera$Size;Z)V

    .line 715
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 725
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferRight:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    const/4 v8, 0x0

    move/from16 v2, p5

    move/from16 v3, p6

    move v4, p1

    move v5, p3

    move v6, p4

    move-object/from16 v7, p7

    invoke-virtual/range {v1 .. v8}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->setPictureAttributes(IIIIILandroid/hardware/Camera$Size;Z)V

    .line 733
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    const/4 v8, 0x0

    move/from16 v2, p5

    move/from16 v3, p6

    move v4, p1

    move v5, p3

    move v6, p4

    move-object/from16 v7, p7

    invoke-virtual/range {v1 .. v8}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->setPictureAttributes(IIIIILandroid/hardware/Camera$Size;Z)V

    .line 741
    monitor-exit p0

    .line 742
    return-void

    .line 741
    .end local v10           #i:I
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public getAllOutBuffers()[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    .locals 5

    .prologue
    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, buffers:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    monitor-enter p0

    .line 784
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$1;->$SwitchMap$com$sonyericsson$android$camera3d$YuvOutBuffer$OutBufferType:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mType:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 806
    :goto_0
    monitor-exit p0

    .line 808
    return-object v0

    .line 786
    :pswitch_0
    const/16 v1, 0x11

    new-array v0, v1, [Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    .line 787
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    aput-object v2, v0, v1

    .line 788
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferRight:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    aput-object v2, v0, v1

    .line 789
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBuffersMA:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBuffersMA:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 806
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 795
    :pswitch_1
    const/4 v1, 0x2

    :try_start_1
    new-array v0, v1, [Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    .line 796
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    aput-object v2, v0, v1

    .line 797
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferRight:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    aput-object v2, v0, v1

    goto :goto_0

    .line 800
    :pswitch_2
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    .line 801
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    aput-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 784
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOutBuffer(Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;)[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    .locals 5
    .parameter "bufferType"

    .prologue
    const/16 v4, 0xf

    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, buffers:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    monitor-enter p0

    .line 816
    :try_start_0
    sget-object v2, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$1;->$SwitchMap$com$sonyericsson$android$camera3d$YuvOutBuffer$OutBufferType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 835
    :cond_0
    :goto_0
    monitor-exit p0

    .line 836
    return-object v0

    .line 818
    :pswitch_0
    const/16 v2, 0xf

    new-array v0, v2, [Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    .line 819
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 820
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBuffersMA:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    .line 819
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 824
    .end local v1           #i:I
    :pswitch_1
    const/4 v2, 0x2

    new-array v0, v2, [Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    .line 825
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    aput-object v3, v0, v2

    .line 826
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferRight:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    aput-object v3, v0, v2

    goto :goto_0

    .line 835
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 829
    :pswitch_2
    const/4 v2, 0x1

    :try_start_1
    new-array v0, v2, [Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    .line 830
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    aput-object v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public releaseOutBuffers()V
    .locals 2

    .prologue
    .line 747
    monitor-enter p0

    .line 748
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    if-eqz v1, :cond_0

    .line 754
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->release()V

    .line 755
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    .line 757
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferRight:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    if-eqz v1, :cond_1

    .line 763
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferRight:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->release()V

    .line 764
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBufferRight:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    .line 766
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBuffersMA:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    if-eqz v1, :cond_3

    .line 767
    const/16 v0, 0xe

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 773
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBuffersMA:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->release()V

    .line 767
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 775
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->mOutImageBuffersMA:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    .line 777
    .end local v0           #i:I
    :cond_3
    monitor-exit p0

    .line 778
    return-void

    .line 777
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
