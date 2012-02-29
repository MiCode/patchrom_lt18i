.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# static fields
.field private static final DCM_SYNC_APP_ACTION:Ljava/lang/String; = "com.nttdocomo.android.syncmlapp.SP_SYNCML_PUSH"

.field private static final DCM_SYNC_APP_CLASS_NAME:Ljava/lang/String; = "com.nttdocomo.android.syncmlapp.SyncML_SMSService"

.field private static final DCM_SYNC_APP_PKG_NAME:Ljava/lang/String; = "com.nttdocomo.android.syncmlapp"

.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 1
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 60
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 61
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method private dispatchWapPdu_DOCOMO_DataStorage([BIILjava/lang/String;ILjava/util/HashMap;III)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "dataIndex"
    .parameter
    .parameter "appId"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .local p6, contentTypeParameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 254
    array-length v4, p1

    sub-int/2addr v4, p5

    new-array v0, v4, [B

    .line 255
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, p5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    new-array v2, p9, [B

    .line 258
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p8, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, dummyIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 263
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.nttdocomo.android.syncmlapp.SP_SYNCML_PUSH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 268
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 269
    const-string v4, "com.nttdocomo.android.syncmlapp"

    const-string v5, "com.nttdocomo.android.syncmlapp.SyncML_SMSService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 271
    return-void
.end method

.method private dispatchWapPdu_MailPush([BIILjava/lang/String;I[BLjava/util/HashMap;III)V
    .locals 15
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "dataIndex"
    .parameter "sms"
    .parameter
    .parameter "appId"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/lang/String;",
            "I[B",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p7, contentTypeParameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move v12, v0

    sub-int v12, v12, p5

    new-array v5, v12, [B

    .line 279
    .local v5, data:[B
    const/4 v12, 0x0

    array-length v13, v5

    move-object/from16 v0, p1

    move/from16 v1, p5

    move-object v2, v5

    move v3, v12

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    new-instance v8, Landroid/content/Intent;

    const-string v12, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v8, intent:Landroid/content/Intent;
    move-object v0, v8

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string/jumbo v12, "transactionId"

    move-object v0, v8

    move-object v1, v12

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v12, "pduType"

    move-object v0, v8

    move-object v1, v12

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    const-string v12, "data"

    invoke-virtual {v8, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 287
    const v12, 0x905c

    move/from16 v0, p8

    move v1, v12

    if-ne v0, v1, :cond_1

    .line 288
    move/from16 v0, p10

    new-array v0, v0, [B

    move-object v7, v0

    .line 289
    .local v7, header:[B
    const/4 v12, 0x0

    array-length v13, v7

    move-object/from16 v0, p1

    move/from16 v1, p9

    move-object v2, v7

    move v3, v12

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    const-string v12, "header"

    invoke-virtual {v8, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 292
    const-string v12, "applicationId"

    move-object v0, v8

    move-object v1, v12

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    const-string v12, "jp.co.nttdocomo.carriermail"

    const-string v13, "jp.co.nttdocomo.carriermail.SMSService"

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v6, dummyIntent:Landroid/content/Intent;
    iget-object v12, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v13, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v12, v6, v13}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 300
    iget-object v12, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_0

    .line 301
    const-string v12, "WAP PUSH"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "call startService : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v12, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 323
    .end local v6           #dummyIntent:Landroid/content/Intent;
    .end local v7           #header:[B
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const-string v12, "contentTypeParameters"

    move-object v0, v8

    move-object v1, v12

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 306
    const/16 v12, 0x9

    move/from16 v0, p8

    move v1, v12

    if-ne v0, v1, :cond_3

    .line 307
    if-eqz p6, :cond_2

    .line 308
    invoke-static/range {p6 .. p6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v9

    .line 309
    .local v9, smsMessage:Landroid/telephony/SmsMessage;
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v10

    .line 310
    .local v10, srcMps:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    .line 311
    .local v11, strPpg:Ljava/lang/String;
    const-string v12, "mps"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v12, "ppg"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    .end local v9           #smsMessage:Landroid/telephony/SmsMessage;
    .end local v10           #srcMps:Ljava/lang/String;
    .end local v11           #strPpg:Ljava/lang/String;
    :cond_2
    const-string/jumbo v12, "wapAppID"

    move-object v0, v8

    move-object v1, v12

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    :goto_1
    iget-object v12, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v13, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v12, v8, v13}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_3
    move/from16 v0, p10

    new-array v0, v0, [B

    move-object v7, v0

    .line 317
    .restart local v7       #header:[B
    const/4 v12, 0x0

    array-length v13, v7

    move-object/from16 v0, p1

    move/from16 v1, p9

    move-object v2, v7

    move v3, v12

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    const-string v12, "header"

    invoke-virtual {v8, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 1
    .parameter "pdu"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B[B)I

    move-result v0

    return v0
.end method

.method public dispatchWapPdu([B[B)I
    .locals 34
    .parameter "pdu"
    .parameter "smsPdu"

    .prologue
    .line 91
    const/16 v29, 0x0

    .line 92
    .local v29, index:I
    add-int/lit8 v30, v29, 0x1

    .end local v29           #index:I
    .local v30, index:I
    aget-byte v5, p1, v29

    and-int/lit16 v7, v5, 0xff

    .line 93
    .local v7, transactionId:I
    add-int/lit8 v29, v30, 0x1

    .end local v30           #index:I
    .restart local v29       #index:I
    aget-byte v5, p1, v30

    and-int/lit16 v8, v5, 0xff

    .line 94
    .local v8, pduType:I
    const/4 v15, 0x0

    .line 96
    .local v15, headerLength:I
    const/4 v5, 0x6

    if-eq v8, v5, :cond_0

    const/4 v5, 0x7

    if-eq v8, v5, :cond_0

    .line 99
    const/4 v5, 0x1

    .line 247
    :goto_0
    return v5

    .line 102
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 112
    const/4 v5, 0x2

    goto :goto_0

    .line 114
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    long-to-int v15, v5

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/lit8 v29, v5, 0x2

    .line 117
    move/from16 v14, v29

    .line 131
    .local v14, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 133
    const/4 v5, 0x2

    goto :goto_0

    .line 136
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int v29, v29, v5

    .line 140
    move v0, v15

    new-array v0, v0, [B

    move-object/from16 v28, v0

    .line 141
    .local v28, header:[B
    const/4 v5, 0x0

    move-object/from16 v0, v28

    array-length v0, v0

    move v6, v0

    move-object/from16 v0, p1

    move v1, v14

    move-object/from16 v2, v28

    move v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    const/4 v10, 0x0

    .line 147
    .local v10, dataIndex:I
    const-string v5, "application/vnd.wap.coc"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 148
    move-object/from16 v32, p1

    .line 155
    .local v32, intentData:[B
    :goto_1
    const-string v5, "application/vnd.wap.mms-message"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 156
    const-string v33, "android.permission.RECEIVE_MMS"

    .line 161
    .local v33, permission:Ljava/lang/String;
    :goto_2
    move/from16 v27, v29

    .line 162
    .local v27, appIdIndex:I
    const/4 v13, 0x0

    .line 163
    .local v13, binaryAppId:I
    const-string v5, "application/vnd.wap.emn+wbxml"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 164
    move/from16 v0, v27

    move v1, v10

    if-ge v0, v1, :cond_3

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeWellKnownFieldName(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    const-wide/16 v11, 0x2f

    cmp-long v5, v5, v11

    if-nez v5, :cond_3

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int v27, v27, v5

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v26

    .line 173
    .local v26, appID:Ljava/lang/String;
    if-eqz v26, :cond_7

    .line 174
    const-string v5, "X-Wap-Application-ID:x-wap-application:emn.ua"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 175
    const/16 v13, 0x9

    .line 203
    .end local v26           #appID:Ljava/lang/String;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v11, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MailPush([BIILjava/lang/String;I[BLjava/util/HashMap;III)V

    .line 247
    :goto_4
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 150
    .end local v13           #binaryAppId:I
    .end local v27           #appIdIndex:I
    .end local v32           #intentData:[B
    .end local v33           #permission:Ljava/lang/String;
    :cond_4
    add-int v10, v14, v15

    .line 151
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    sub-int/2addr v5, v10

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v32, v0

    .line 152
    .restart local v32       #intentData:[B
    const/4 v5, 0x0

    move-object/from16 v0, v32

    array-length v0, v0

    move v6, v0

    move-object/from16 v0, p1

    move v1, v10

    move-object/from16 v2, v32

    move v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 158
    :cond_5
    const-string v33, "android.permission.RECEIVE_WAP_PUSH"

    .restart local v33       #permission:Ljava/lang/String;
    goto/16 :goto_2

    .line 176
    .restart local v13       #binaryAppId:I
    .restart local v26       #appID:Ljava/lang/String;
    .restart local v27       #appIdIndex:I
    :cond_6
    const-string/jumbo v5, "x-oma-docomo:xmd.mail.ua"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 177
    const v13, 0x905c

    goto :goto_3

    .line 180
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    long-to-int v13, v5

    goto :goto_3

    .line 184
    .end local v26           #appID:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTokenTextFieldName(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "X-Wap-Application-Id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int v27, v27, v5

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v26

    .line 191
    .restart local v26       #appID:Ljava/lang/String;
    if-eqz v26, :cond_3

    .line 192
    const-string v5, "X-Wap-Application-ID:x-wap-application:emn.ua"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 193
    const/16 v13, 0x9

    goto/16 :goto_3

    .line 194
    :cond_9
    const-string/jumbo v5, "x-oma-docomo:xmd.mail.ua"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 195
    const v13, 0x905c

    goto/16 :goto_3

    .line 207
    .end local v26           #appID:Ljava/lang/String;
    :cond_a
    const-string v5, "application/vnd.wap.slc"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 208
    move/from16 v0, v27

    move v1, v10

    if-ge v0, v1, :cond_b

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeWellKnownFieldName(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    const-wide/16 v11, 0x2f

    cmp-long v5, v5, v11

    if-nez v5, :cond_b

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int v27, v27, v5

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v26

    .line 217
    .restart local v26       #appID:Ljava/lang/String;
    if-eqz v26, :cond_c

    .line 218
    const-string/jumbo v5, "x-oma-docomo:xmd.storage.ua"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 219
    const v13, 0x905f

    .line 230
    .end local v26           #appID:Ljava/lang/String;
    :cond_b
    :goto_5
    const v5, 0x905f

    if-eq v13, v5, :cond_d

    .line 231
    new-instance v31, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v31, intent:Landroid/content/Intent;
    move-object/from16 v0, v31

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string/jumbo v5, "transactionId"

    move-object/from16 v0, v31

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    const-string v5, "pduType"

    move-object/from16 v0, v31

    move-object v1, v5

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    const-string v5, "header"

    move-object/from16 v0, v31

    move-object v1, v5

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 236
    const-string v5, "data"

    move-object/from16 v0, v31

    move-object v1, v5

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 237
    const-string v5, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v31

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 222
    .end local v31           #intent:Landroid/content/Intent;
    .restart local v26       #appID:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    long-to-int v13, v5

    goto :goto_5

    .line 241
    .end local v26           #appID:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v21, v10

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    invoke-direct/range {v16 .. v25}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DOCOMO_DataStorage([BIILjava/lang/String;ILjava/util/HashMap;III)V

    goto/16 :goto_4
.end method
