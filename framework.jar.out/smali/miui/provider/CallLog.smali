.class public Lmiui/provider/CallLog;
.super Landroid/provider/CallLog;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/CallLog$Calls;
    }
.end annotation


# static fields
.field private static final MAX_NUMBER_LENGTH:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/provider/CallLog;-><init>()V

    .line 20
    return-void
.end method

.method public static makeFakeId(Ljava/lang/String;)Ljava/lang/Long;
    .locals 10
    .parameter "number"

    .prologue
    const/16 v9, 0x30

    const/16 v8, 0xb

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 217
    :goto_0
    return-object v3

    .line 196
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_1

    .line 199
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 200
    .local v0, c:C
    if-lt v0, v9, :cond_2

    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    .line 201
    invoke-virtual {v2, v5, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lt v3, v8, :cond_2

    .line 209
    .end local v0           #c:C
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_3

    .line 210
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 198
    .restart local v0       #c:C
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 213
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 214
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 217
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v6, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0
.end method
