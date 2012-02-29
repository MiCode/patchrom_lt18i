.class public Lcom/android/settings/wifi/WapiUtils;
.super Ljava/lang/Object;
.source "WapiUtils.java"


# static fields
.field private static readCustomization:Z

.field private static wapiEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WapiUtils;->readCustomization:Z

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WapiUtils;->wapiEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isWapiEnabled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const-string v3, "WapiUtils"

    .line 32
    const-class v3, Lcom/android/settings/wifi/WapiUtils;

    monitor-enter v3

    :try_start_0
    sget-boolean v4, Lcom/android/settings/wifi/WapiUtils;->readCustomization:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 35
    :try_start_1
    const-string v4, "com.sonyericsson.wapicustomization"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 37
    .local v2, wapiContext:Landroid/content/Context;
    const-string v4, "CUSTOMIZATION"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 39
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v4, "wapi_enabled"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/wifi/WapiUtils;->wapiEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    .end local v2           #wapiContext:Landroid/content/Context;
    :goto_0
    const/4 v4, 0x0

    :try_start_2
    sput-boolean v4, Lcom/android/settings/wifi/WapiUtils;->readCustomization:Z

    .line 47
    :cond_0
    sget-boolean v4, Lcom/android/settings/wifi/WapiUtils;->wapiEnabled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v4

    .line 40
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 41
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v4, "WapiUtils"

    const-string v5, "no wapi customization package found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 32
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 42
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 43
    .local v0, e:Ljava/lang/ClassCastException;
    :try_start_4
    const-string v4, "WapiUtils"

    const-string v5, "the customization is corrupt"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
