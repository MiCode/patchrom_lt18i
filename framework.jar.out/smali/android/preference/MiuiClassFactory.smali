.class Landroid/preference/MiuiClassFactory;
.super Ljava/lang/Object;
.source "MiuiClassFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSystemApp(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newPreferenceGroupAdapter(Landroid/preference/PreferenceGroup;)Landroid/preference/PreferenceGroupAdapter;
    .locals 1
    .parameter "preferenceGroup"

    .prologue
    .line 8
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/MiuiClassFactory;->isSystemApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Landroid/preference/MiuiPreferenceGroupAdapter;

    invoke-direct {v0, p0}, Landroid/preference/MiuiPreferenceGroupAdapter;-><init>(Landroid/preference/PreferenceGroup;)V

    .line 11
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter;-><init>(Landroid/preference/PreferenceGroup;)V

    goto :goto_0
.end method
