.class public Lcom/android/settings/TetherApnData;
.super Ljava/lang/Object;
.source "TetherApnData.java"


# instance fields
.field private mApnData:[Ljava/lang/String;

.field private mIsTetherDunRequired:Z

.field private mIsTetherDunValid:Z

.field private mTypeArrayAsString:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 5
    .parameter "isTetherDunRequired"
    .parameter "apnDataString"

    .prologue
    const/16 v3, 0xe

    const/4 v2, 0x0

    const-string v4, ""

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v2, p0, Lcom/android/settings/TetherApnData;->mIsTetherDunRequired:Z

    .line 31
    iput-boolean v2, p0, Lcom/android/settings/TetherApnData;->mIsTetherDunValid:Z

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    .line 59
    iput-boolean p1, p0, Lcom/android/settings/TetherApnData;->mIsTetherDunRequired:Z

    .line 60
    move-object v0, p2

    .line 63
    .local v0, apnData:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    const-string v1, "\\s*,\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/android/settings/TetherApnData;->getTypeArrayAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    array-length v1, v1

    if-lt v1, v3, :cond_0

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/TetherApnData;->mIsTetherDunValid:Z

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/TetherApnData;->mIsTetherDunValid:Z

    .line 72
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getTypeArrayAsString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xd

    .line 199
    iget-object v3, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    const/4 v3, 0x0

    .line 215
    :goto_0
    return-object v3

    .line 203
    :cond_0
    iget-object v3, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v6

    new-array v1, v3, [Ljava/lang/String;

    .line 204
    .local v1, typeArray:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    array-length v5, v5

    sub-int/2addr v5, v6

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v2, types:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 209
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-eq v0, v3, :cond_1

    .line 211
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public getApn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAuthType()I
    .locals 3

    .prologue
    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 182
    :goto_0
    return v1

    .line 181
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 182
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMmsPort()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMmsProxy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMmsc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTypeArray()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isTetherDunValid()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/settings/TetherApnData;->mIsTetherDunValid:Z

    return v0
.end method

.method public setApn(Ljava/lang/String;)V
    .locals 2
    .parameter "apn"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 224
    return-void
.end method

.method public setAuthType(I)V
    .locals 3
    .parameter "authType"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xc

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 268
    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 2
    .parameter "mcc"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xa

    aput-object p1, v0, v1

    .line 260
    return-void
.end method

.method public setMmsPort(Ljava/lang/String;)V
    .locals 2
    .parameter "mmsPort"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x9

    aput-object p1, v0, v1

    .line 256
    return-void
.end method

.method public setMmsProxy(Ljava/lang/String;)V
    .locals 2
    .parameter "mmsProxy"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x8

    aput-object p1, v0, v1

    .line 252
    return-void
.end method

.method public setMmsc(Ljava/lang/String;)V
    .locals 2
    .parameter "mmsc"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x7

    aput-object p1, v0, v1

    .line 248
    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 2
    .parameter "mnc"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object p1, v0, v1

    .line 264
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 220
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 240
    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 2
    .parameter "port"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 232
    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 2
    .parameter "proxy"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 228
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 2
    .parameter "server"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x6

    aput-object p1, v0, v1

    .line 244
    return-void
.end method

.method public setTypeArray(Ljava/lang/String;)V
    .locals 0
    .parameter "typeArrayAsString"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/settings/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x4

    aput-object p1, v0, v1

    .line 236
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/android/settings/TetherApnData;->mApnData:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/android/settings/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/android/settings/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
