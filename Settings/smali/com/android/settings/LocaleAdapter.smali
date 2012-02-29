.class public Lcom/android/settings/LocaleAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocaleAdapter.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mLocales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/LocalePicker$LocaleRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/LocalePicker$LocaleRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, locales:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/LocalePicker$LocaleRecord;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/LocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    iput-object p2, p0, Lcom/android/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    .line 45
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/LocalePicker$LocaleRecord;
    .locals 1
    .parameter "position"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/LocalePicker$LocaleRecord;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/settings/LocaleAdapter;->getItem(I)Lcom/android/settings/LocalePicker$LocaleRecord;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/LocalePicker$LocaleRecord;

    iget v0, p0, Lcom/android/settings/LocalePicker$LocaleRecord;->type:I

    return v0
.end method

.method public getLocale(I)Ljava/util/Locale;
    .locals 1
    .parameter "position"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/settings/LocaleAdapter;->getItem(I)Lcom/android/settings/LocalePicker$LocaleRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/LocalePicker$LocaleRecord;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPosition(Ljava/util/Locale;)I
    .locals 4
    .parameter "locale"

    .prologue
    const/4 v3, -0x1

    .line 67
    if-nez p1, :cond_0

    move v2, v3

    .line 74
    :goto_0
    return v2

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/android/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 69
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, position:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/settings/LocaleAdapter;->getLocale(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 71
    goto :goto_0

    .line 69
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 74
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 100
    iget-object v3, p0, Lcom/android/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/LocalePicker$LocaleRecord;

    .line 101
    .local v1, record:Lcom/android/settings/LocalePicker$LocaleRecord;
    if-nez p2, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/settings/LocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, v1, Lcom/android/settings/LocalePicker$LocaleRecord;->resourceId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 104
    :cond_0
    iget v3, v1, Lcom/android/settings/LocalePicker$LocaleRecord;->type:I

    packed-switch v3, :pswitch_data_0

    .line 115
    :goto_0
    return-object p2

    .line 106
    :pswitch_0
    iget-boolean v3, v1, Lcom/android/settings/LocalePicker$LocaleRecord;->enabled:Z

    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 109
    :pswitch_1
    move-object v0, p2

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v2, v0

    .line 110
    .local v2, v:Landroid/widget/CheckedTextView;
    iget-object v3, v1, Lcom/android/settings/LocalePicker$LocaleRecord;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-boolean v3, v1, Lcom/android/settings/LocalePicker$LocaleRecord;->enabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/LocalePicker$LocaleRecord;

    iget-boolean v0, v0, Lcom/android/settings/LocalePicker$LocaleRecord;->enabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
