.class public Lcom/sonyericsson/android/camera/capturingmodeselector/util/CommonUtility;
.super Ljava/lang/Object;
.source "CommonUtility.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonUtility"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMirroringRequired(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 58
    .local v1, result:Z
    if-nez p0, :cond_0

    move v2, v1

    .line 67
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 62
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, checkString:Ljava/lang/String;
    new-instance v3, Ljava/text/Bidi;

    const/4 v4, -0x2

    invoke-direct {v3, v0, v4}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 65
    .local v3, temp:Ljava/text/Bidi;
    invoke-virtual {v3}, Ljava/text/Bidi;->isRightToLeft()Z

    move-result v1

    move v2, v1

    .line 67
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public static isPackageExist(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .parameter "packageName"
    .parameter "context"

    .prologue
    .line 34
    const/4 v2, 0x0

    .line 36
    .local v2, result:Z
    if-nez p1, :cond_0

    move v3, v2

    .line 49
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 40
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 42
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 v2, 0x1

    :goto_1
    move v3, v2

    .line 49
    .restart local v3       #result:I
    goto :goto_0

    .line 44
    .end local v3           #result:I
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_1
.end method
