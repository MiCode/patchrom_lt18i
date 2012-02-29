.class public Landroid/preference/MiuiPreferenceGroupAdapter;
.super Landroid/preference/PreferenceGroupAdapter;
.source "MiuiPreferenceGroupAdapter.java"


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .parameter "preferenceGroup"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/preference/PreferenceGroupAdapter;-><init>(Landroid/preference/PreferenceGroup;)V

    .line 13
    return-void
.end method

.method private changePreferenceCategoryView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    const/16 v0, 0x1e

    const/16 v1, 0x12

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 54
    return-void
.end method

.method private changePreferenceView(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 29
    if-eqz p2, :cond_0

    sub-int v2, p2, v3

    invoke-virtual {p0, v2}, Landroid/preference/MiuiPreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_2

    :cond_0
    move v1, v3

    .line 30
    .local v1, previousIsCategory:Z
    :goto_0
    invoke-virtual {p0}, Landroid/preference/MiuiPreferenceGroupAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-eq p2, v2, :cond_1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Landroid/preference/MiuiPreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_3

    :cond_1
    move v0, v3

    .line 32
    .local v0, nextIsCategory:Z
    :goto_1
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 33
    if-nez p2, :cond_4

    .line 34
    const v2, 0x60202fa

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 49
    :goto_2
    return-void

    .end local v0           #nextIsCategory:Z
    .end local v1           #previousIsCategory:Z
    :cond_2
    move v1, v4

    .line 29
    goto :goto_0

    .restart local v1       #previousIsCategory:Z
    :cond_3
    move v0, v4

    .line 30
    goto :goto_1

    .line 36
    .restart local v0       #nextIsCategory:Z
    :cond_4
    const v2, 0x60202fb

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 38
    :cond_5
    if-eqz v1, :cond_7

    .line 39
    if-nez p2, :cond_6

    .line 40
    const v2, 0x60202fc

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 42
    :cond_6
    const v2, 0x60202f7

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 44
    :cond_7
    if-eqz v0, :cond_8

    .line 45
    const v2, 0x60202f9

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 47
    :cond_8
    const v2, 0x60202f8

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Landroid/preference/PreferenceGroupAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCount()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItemId(I)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getItemViewType(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 17
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceGroupAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 19
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/preference/MiuiPreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    .line 20
    .local v0, preference:Landroid/preference/Preference;
    instance-of v2, v0, Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_0

    .line 21
    invoke-direct {p0, v1}, Landroid/preference/MiuiPreferenceGroupAdapter;->changePreferenceCategoryView(Landroid/view/View;)V

    .line 25
    :goto_0
    return-object v1

    .line 23
    :cond_0
    invoke-direct {p0, v1, p1}, Landroid/preference/MiuiPreferenceGroupAdapter;->changePreferenceView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public bridge synthetic getViewTypeCount()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Landroid/preference/PreferenceGroupAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasStableIds()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Landroid/preference/PreferenceGroupAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEnabled(I)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onPreferenceChange(Landroid/preference/Preference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->onPreferenceChange(Landroid/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic onPreferenceHierarchyChange(Landroid/preference/Preference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroid/preference/Preference;)V

    return-void
.end method
