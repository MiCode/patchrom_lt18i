.class public Landroid/app/MiuiDownloadManager$Request;
.super Landroid/app/DownloadManager$Request;
.source "MiuiDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/MiuiDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field private mAppointName:Ljava/lang/String;

.field private mColumnAppData:Ljava/lang/String;

.field private mNotificationClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 116
    return-void
.end method

.method private putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "contentValues"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 155
    if-eqz p3, :cond_0

    .line 156
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public setAppData(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Request;
    .locals 0
    .parameter "appData"

    .prologue
    .line 131
    iput-object p1, p0, Landroid/app/MiuiDownloadManager$Request;->mColumnAppData:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public setAppointName(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Request;
    .locals 0
    .parameter "appointName"

    .prologue
    .line 123
    iput-object p1, p0, Landroid/app/MiuiDownloadManager$Request;->mAppointName:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public setNotificationClass(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Request;
    .locals 0
    .parameter "notificationClass"

    .prologue
    .line 139
    iput-object p1, p0, Landroid/app/MiuiDownloadManager$Request;->mNotificationClass:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method protected toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 148
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "entity"

    iget-object v2, p0, Landroid/app/MiuiDownloadManager$Request;->mColumnAppData:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/MiuiDownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string v1, "appointname"

    iget-object v2, p0, Landroid/app/MiuiDownloadManager$Request;->mAppointName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/MiuiDownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    const-string v1, "notificationclass"

    iget-object v2, p0, Landroid/app/MiuiDownloadManager$Request;->mNotificationClass:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/MiuiDownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    return-object v0
.end method
