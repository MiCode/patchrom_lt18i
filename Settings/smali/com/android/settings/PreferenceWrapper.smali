.class public Lcom/android/settings/PreferenceWrapper;
.super Ljava/lang/Object;
.source "PreferenceWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setChecked(Landroid/preference/CheckBoxPreference;Z)V
    .locals 0
    .parameter "pref"
    .parameter "checked"

    .prologue
    .line 33
    if-eqz p0, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 36
    :cond_0
    return-void
.end method
