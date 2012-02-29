.class Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TelocationAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;,
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    }
.end annotation


# static fields
.field private static final EVENT_QUERY_TELOCATION:I = 0xa

.field private static sInstance:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;


# instance fields
.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1159
    return-void
.end method

.method public static getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
    .locals 2

    .prologue
    .line 986
    sget-object v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sInstance:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    if-nez v0, :cond_1

    .line 987
    const-class v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    monitor-enter v0

    .line 988
    :try_start_0
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sInstance:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    if-nez v1, :cond_0

    .line 989
    new-instance v1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    invoke-direct {v1}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;-><init>()V

    sput-object v1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sInstance:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    .line 991
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    :cond_1
    sget-object v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sInstance:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    return-object v0

    .line 991
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static queryTelocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 1004
    const-string v7, ""

    .line 1005
    .local v7, location:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1007
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v8

    .line 1008
    .local v8, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v8, :cond_15

    .line 1010
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const/4 p1, 0x4

    new-array v2, p1, [Ljava/lang/String;

    .end local p1
    const/4 p1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, p1

    const/4 p1, 0x1

    const-string v3, "number"

    aput-object v3, v2, p1

    const/4 p1, 0x2

    const-string v3, "location"

    aput-object v3, v2, p1

    const/4 p1, 0x3

    const-string/jumbo v3, "type"

    aput-object v3, v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1016
    .local v0, customLocationCursor:Landroid/database/Cursor;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1017
    .local v5, telLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1018
    .local v4, mobLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    .local v2, jituanLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_7

    .line 1021
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1022
    const/4 p1, 0x3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1023
    .local v3, type:I
    const/4 p1, 0x1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1024
    .local v1, number:Ljava/lang/String;
    const/4 p1, 0x2

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1026
    .local p1, area:Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    move-object p1, v1

    .end local v1           #number:Ljava/lang/String;
    .local p1, number:Ljava/lang/String;
    goto :goto_0

    .line 1028
    .restart local v1       #number:Ljava/lang/String;
    .local p1, area:Ljava/lang/String;
    :pswitch_0
    const-string v3, "0"

    .end local v3           #type:I
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1029
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1031
    :cond_1
    invoke-virtual {v5, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    .line 1032
    .end local v1           #number:Ljava/lang/String;
    .local p1, number:Ljava/lang/String;
    goto :goto_0

    .line 1035
    .restart local v1       #number:Ljava/lang/String;
    .restart local v3       #type:I
    .local p1, area:Ljava/lang/String;
    :pswitch_1
    const-string v3, "+86"

    .end local v3           #type:I
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1036
    const-string v3, "+86"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1041
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x7

    if-lt v3, v9, :cond_0

    .line 1044
    const/4 v3, 0x0

    const/4 v9, 0x7

    invoke-virtual {v1, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    .line 1045
    .end local v1           #number:Ljava/lang/String;
    .local p1, number:Ljava/lang/String;
    goto :goto_0

    .line 1037
    .restart local v1       #number:Ljava/lang/String;
    .local p1, area:Ljava/lang/String;
    :cond_3
    const-string v3, "0086"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1038
    const-string v3, "0086"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1047
    .restart local v3       #type:I
    :pswitch_2
    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v1

    .line 1048
    .end local v1           #number:Ljava/lang/String;
    .local p1, number:Ljava/lang/String;
    goto :goto_0

    .line 1054
    .end local v3           #type:I
    .end local p1           #number:Ljava/lang/String;
    :catchall_0
    move-exception p0

    .end local p0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1109
    .end local v0           #customLocationCursor:Landroid/database/Cursor;
    .end local v2           #jituanLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #mobLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #telLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :catch_0
    move-exception p0

    move-object p1, p0

    move-object v0, v7

    .end local v7           #location:Ljava/lang/String;
    .local v0, location:Ljava/lang/String;
    move-object p0, v6

    .line 1110
    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    .local p1, e:Ljava/lang/RuntimeException;
    :goto_2
    :try_start_3
    const-string v1, "PhoneNumberUtils"

    const-string v2, "queryTelocation() exception: "

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1112
    if-eqz p0, :cond_4

    .line 1113
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object p1, v0

    .end local v0           #location:Ljava/lang/String;
    .local p1, location:Ljava/lang/String;
    :cond_5
    :goto_3
    move-object v0, p1

    .line 1116
    :goto_4
    return-object v0

    .line 1054
    .end local p1           #location:Ljava/lang/String;
    .local v0, customLocationCursor:Landroid/database/Cursor;
    .restart local v2       #jituanLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #mobLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #telLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #location:Ljava/lang/String;
    .restart local v8       #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .local p0, context:Landroid/content/Context;
    :cond_6
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1059
    :cond_7
    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_c

    .line 1060
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1062
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p1, v1, :cond_8

    .line 1066
    const/4 v1, 0x1

    .line 1067
    .local v1, isJiTuanNumber:Z
    const/4 p1, 0x0

    .local p1, i:I
    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge p1, v9, :cond_16

    .line 1068
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x23

    if-ne v9, v10, :cond_a

    .line 1067
    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 1070
    :cond_a
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_9

    .line 1073
    const/4 p1, 0x0

    .line 1078
    .end local v1           #isJiTuanNumber:Z
    .local p1, isJiTuanNumber:Z
    :goto_6
    if-eqz p1, :cond_8

    .line 1079
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    check-cast p0, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1112
    if-eqz v6, :cond_b

    .line 1113
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b
    move-object p1, v7

    .end local v7           #location:Ljava/lang/String;
    .local p1, location:Ljava/lang/String;
    move-object v0, p0

    move-object p0, v6

    .line 1079
    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_4

    .line 1083
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local p1           #location:Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #location:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_c
    :try_start_5
    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result p1

    if-nez p1, :cond_e

    .line 1084
    #getter for: Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;
    invoke-static {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->access$000(Lmiui/telephony/PhoneNumberUtils$PhoneNumber;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountry(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object p0

    .end local v7           #location:Ljava/lang/String;
    .local p0, location:Ljava/lang/String;
    move-object p1, p0

    .end local p0           #location:Ljava/lang/String;
    .restart local p1       #location:Ljava/lang/String;
    move-object p0, v6

    .line 1106
    .end local v2           #jituanLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #mobLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #telLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_7
    if-eqz p0, :cond_d

    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1107
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object p1

    .line 1112
    :cond_d
    if-eqz p0, :cond_5

    .line 1113
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 1085
    .end local p1           #location:Ljava/lang/String;
    .restart local v2       #jituanLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #mobLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #telLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #location:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_e
    :try_start_7
    #getter for: Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;
    invoke-static {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->access$100(Lmiui/telephony/PhoneNumberUtils$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 1087
    #getter for: Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;
    invoke-static {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->access$100(Lmiui/telephony/PhoneNumberUtils$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .end local v7           #location:Ljava/lang/String;
    .restart local p1       #location:Ljava/lang/String;
    if-eqz p1, :cond_10

    .line 1112
    if-eqz v6, :cond_f

    .line 1113
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f
    move-object p0, v6

    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    move-object v0, p1

    .line 1088
    goto/16 :goto_4

    .line 1091
    .restart local v6       #c:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    :cond_10
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #context:Landroid/content/Context;
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://telocation/tel/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    #getter for: Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;
    invoke-static {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->access$100(Lmiui/telephony/PhoneNumberUtils$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .end local v2           #jituanLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #mobLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #telLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-result-object p0

    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_7

    .line 1094
    .end local p1           #location:Ljava/lang/String;
    .restart local v2       #jituanLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #mobLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #telLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #location:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_11
    :try_start_9
    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1095
    #getter for: Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;
    invoke-static {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->access$200(Lmiui/telephony/PhoneNumberUtils$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, locationId:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .end local v7           #location:Ljava/lang/String;
    .restart local p1       #location:Ljava/lang/String;
    if-eqz p1, :cond_13

    .line 1112
    if-eqz v6, :cond_12

    .line 1113
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_12
    move-object p0, v6

    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    move-object v0, p1

    .line 1098
    goto/16 :goto_4

    .line 1101
    .restart local v6       #c:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    :cond_13
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #context:Landroid/content/Context;
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://telocation/mobile/"

    .end local v2           #jituanLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .end local v1           #locationId:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .end local v4           #mobLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #telLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-result-object p0

    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_7

    .line 1112
    .end local v8           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .end local p0           #c:Landroid/database/Cursor;
    .end local p1           #location:Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #location:Ljava/lang/String;
    :catchall_1
    move-exception p0

    move-object v0, p0

    move-object p1, v7

    .end local v7           #location:Ljava/lang/String;
    .restart local p1       #location:Ljava/lang/String;
    move-object p0, v6

    .end local v6           #c:Landroid/database/Cursor;
    .restart local p0       #c:Landroid/database/Cursor;
    :goto_8
    if-eqz p0, :cond_14

    .line 1113
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1112
    :cond_14
    throw v0

    .end local p0           #c:Landroid/database/Cursor;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :catchall_2
    move-exception p0

    move-object v0, p0

    move-object p0, v6

    .end local v6           #c:Landroid/database/Cursor;
    .restart local p0       #c:Landroid/database/Cursor;
    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_8

    .end local v8           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .local v0, location:Ljava/lang/String;
    .local p1, e:Ljava/lang/RuntimeException;
    :catchall_4
    move-exception p1

    move-object v11, p1

    move-object p1, v0

    .end local v0           #location:Ljava/lang/String;
    .local p1, location:Ljava/lang/String;
    move-object v0, v11

    goto :goto_8

    .line 1109
    .end local p0           #c:Landroid/database/Cursor;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :catch_1
    move-exception p0

    move-object v0, p1

    .end local p1           #location:Ljava/lang/String;
    .restart local v0       #location:Ljava/lang/String;
    move-object p1, p0

    move-object p0, v6

    .end local v6           #c:Landroid/database/Cursor;
    .restart local p0       #c:Landroid/database/Cursor;
    goto/16 :goto_2

    .end local v0           #location:Ljava/lang/String;
    .restart local p1       #location:Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v11, v0

    move-object v0, p1

    .end local p1           #location:Ljava/lang/String;
    .restart local v0       #location:Ljava/lang/String;
    move-object p1, v11

    goto/16 :goto_2

    .end local v0           #location:Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #location:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_15
    move-object p0, v6

    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    move-object p1, v7

    .end local v7           #location:Ljava/lang/String;
    .restart local p1       #location:Ljava/lang/String;
    goto/16 :goto_7

    .local v0, i$:Ljava/util/Iterator;
    .local v1, isJiTuanNumber:Z
    .restart local v2       #jituanLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #mobLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #telLocations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #location:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p1, i:I
    :cond_16
    move p1, v1

    .end local v1           #isJiTuanNumber:Z
    .local p1, isJiTuanNumber:Z
    goto/16 :goto_6

    .line 1026
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 1163
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1164
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;

    invoke-direct {v0, p0, p1}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;-><init>(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    .line 1166
    :cond_0
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 1200
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    .line 1202
    .local v0, args:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1203
    iget-object v1, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->listener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;

    if-eqz v1, :cond_0

    .line 1204
    iget-object v1, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->listener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;

    iget-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie1:Ljava/lang/Object;

    iget-object v3, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie2:Ljava/lang/Object;

    iget-object v4, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie3:Ljava/lang/Object;

    iget-object v5, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->location:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    :cond_0
    return-void
.end method

.method public startQueryTelocationString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "token"
    .parameter "cookie1"
    .parameter "cookie2"
    .parameter "cookie3"
    .parameter "listener"
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 1182
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    invoke-direct {v0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;-><init>()V

    .line 1183
    .local v0, args:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    iput-object p0, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->handler:Landroid/os/Handler;

    .line 1184
    iput-object p6, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->context:Landroid/content/Context;

    .line 1185
    iput-object p7, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->phoneNumber:Ljava/lang/String;

    .line 1186
    iput-object p2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie1:Ljava/lang/Object;

    .line 1187
    iput-object p3, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie2:Ljava/lang/Object;

    .line 1188
    iput-object p4, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie3:Ljava/lang/Object;

    .line 1189
    iput-object p5, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->listener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;

    .line 1190
    const/4 v2, 0x0

    iput-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->location:Ljava/lang/String;

    .line 1192
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1193
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1194
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1195
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1196
    return-void
.end method
