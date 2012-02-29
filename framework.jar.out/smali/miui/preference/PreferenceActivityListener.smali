.class public Lmiui/preference/PreferenceActivityListener;
.super Ljava/lang/Object;
.source "PreferenceActivityListener.java"


# static fields
.field private static final PREFERENCE_FOOTER_HEIGHT:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changeListView(Landroid/widget/ListView;)V
    .locals 5
    .parameter "listView"

    .prologue
    const/4 v4, 0x0

    .line 32
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 34
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, footerView:Landroid/view/View;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 39
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 40
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x106000d

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 41
    const v1, 0x6020344

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 42
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 44
    .end local v0           #footerView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private static isSystemApp(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 22
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

.method public static onContentChanged(Landroid/preference/PreferenceActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 14
    invoke-static {p0}, Lmiui/preference/PreferenceActivityListener;->isSystemApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lmiui/preference/PreferenceActivityListener;->changeListView(Landroid/widget/ListView;)V

    .line 18
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x6020344

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method public static onCreate(Landroid/preference/PreferenceActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 26
    invoke-static {p0}, Lmiui/preference/PreferenceActivityListener;->isSystemApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const v0, 0x60e0074

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setTheme(I)V

    .line 29
    :cond_0
    return-void
.end method

.method public static onShowDialog(Landroid/app/Dialog;Landroid/widget/ListView;)V
    .locals 2
    .parameter "dialog"
    .parameter "listView"

    .prologue
    .line 47
    invoke-static {p1}, Lmiui/preference/PreferenceActivityListener;->changeListView(Landroid/widget/ListView;)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x6020344

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 49
    return-void
.end method
