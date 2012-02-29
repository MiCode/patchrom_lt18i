.class public Lmiui/preference/CheckBoxPreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "CheckBoxPreferenceCategory.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckedPreferenceGroup"


# instance fields
.field private mCheckedPosition:I

.field private mCheckedPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/preference/CheckBoxPreferenceCategory;->mCheckedPreference:Landroid/preference/CheckBoxPreference;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lmiui/preference/CheckBoxPreferenceCategory;->mCheckedPosition:I

    .line 22
    return-void
.end method


# virtual methods
.method public addPreference(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 26
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only CheckBoxPreference can be added toCheckedPreferenceGroup"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-result v0

    .line 30
    .local v0, added:Z
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 34
    :cond_1
    return v0
.end method

.method public getCheckedPosition()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lmiui/preference/CheckBoxPreferenceCategory;->mCheckedPosition:I

    return v0
.end method

.method public getCheckedPreference()Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmiui/preference/CheckBoxPreferenceCategory;->mCheckedPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 71
    iget-object v1, p0, Lmiui/preference/CheckBoxPreferenceCategory;->mCheckedPreference:Landroid/preference/CheckBoxPreference;

    if-eq p1, v1, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lmiui/preference/CheckBoxPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lmiui/preference/CheckBoxPreferenceCategory;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    .line 75
    .local v0, listener:Landroid/preference/Preference$OnPreferenceClickListener;
    if-eqz v0, :cond_1

    .line 76
    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 78
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public setCheckedPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 52
    if-ne p1, v0, :cond_0

    .line 53
    iput v0, p0, Lmiui/preference/CheckBoxPreferenceCategory;->mCheckedPosition:I

    .line 54
    iput-object v1, p0, Lmiui/preference/CheckBoxPreferenceCategory;->mCheckedPreference:Landroid/preference/CheckBoxPreference;

    .line 55
    invoke-virtual {p0, v1}, Lmiui/preference/CheckBoxPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/preference/CheckBoxPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/preference/CheckBoxPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public setCheckedPreference(Landroid/preference/Preference;)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 38
    invoke-virtual {p0}, Lmiui/preference/CheckBoxPreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 39
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 40
    invoke-virtual {p0, v1}, Lmiui/preference/CheckBoxPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 41
    .local v2, pref:Landroid/preference/CheckBoxPreference;
    if-ne v2, p1, :cond_0

    .line 42
    iput-object v2, p0, Lmiui/preference/CheckBoxPreferenceCategory;->mCheckedPreference:Landroid/preference/CheckBoxPreference;

    .line 43
    iput v1, p0, Lmiui/preference/CheckBoxPreferenceCategory;->mCheckedPosition:I

    .line 44
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 39
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 49
    .end local v2           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    return-void
.end method
