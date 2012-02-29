.class public Lcom/android/settings/ZoneList;
.super Landroid/app/ListActivity;
.source "ZoneList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ZoneList$MyComparator;
    }
.end annotation


# instance fields
.field private mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

.field private mDefault:I

.field private mSortedByTimezone:Z

.field private mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 240
    return-void
.end method

.method private getZones()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const-string v12, "ZoneList"

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v1, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 161
    .local v4, date:J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ZoneList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f040021

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 162
    .local v8, xrp:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 164
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    .line 165
    :goto_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, v11, :cond_5

    .line 166
    :goto_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, v10, :cond_2

    .line 167
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    .line 189
    .end local v8           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object v1

    .line 170
    .restart local v8       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 183
    .end local v8           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 184
    .local v7, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v0, "ZoneList"

    const-string v0, "Ill-formatted timezones.xml file"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 172
    .end local v7           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v9, "timezone"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, id:Ljava/lang/String;
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .local v3, displayName:Ljava/lang/String;
    move-object v0, p0

    .line 175
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/ZoneList;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    .line 177
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #displayName:Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, v11, :cond_4

    .line 178
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 185
    .end local v8           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 186
    .local v6, ioe:Ljava/io/IOException;
    const-string v0, "ZoneList"

    const-string v0, "Unable to read timezones.xml file"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 180
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v8       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_4
    :try_start_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_0

    .line 182
    :cond_5
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method private setSorting(Z)V
    .locals 1
    .parameter "timezone"

    .prologue
    .line 153
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/ZoneList;->mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/ZoneList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iput-boolean p1, p0, Lcom/android/settings/ZoneList;->mSortedByTimezone:Z

    .line 155
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ZoneList;->mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

    goto :goto_0
.end method


# virtual methods
.method protected addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter
    .parameter "id"
    .parameter "displayName"
    .parameter "date"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    .local v0, map:Ljava/util/HashMap;
    const-string v6, "id"

    invoke-virtual {v0, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v6, "name"

    invoke-virtual {v0, v6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 198
    .local v5, tz:Ljava/util/TimeZone;
    invoke-virtual {v5, p4, p5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 199
    .local v3, offset:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 200
    .local v4, p:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v2, name:Ljava/lang/StringBuilder;
    const-string v6, "GMT"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    if-gez v3, :cond_2

    .line 204
    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    :goto_0
    const v6, 0x36ee80

    div-int v6, v4, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const/16 v6, 0x3a

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    const v6, 0xea60

    div-int v1, v4, v6

    .line 213
    .local v1, min:I
    rem-int/lit8 v1, v1, 0x3c

    .line 215
    const/16 v6, 0xa

    if-ge v1, v6, :cond_0

    .line 216
    const/16 v6, 0x30

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    const-string v6, "gmt"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v6, "offset"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 224
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/android/settings/ZoneList;->mDefault:I

    .line 227
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-void

    .line 206
    .end local v1           #min:I
    :cond_2
    const/16 v6, 0x2b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "gmt"

    aput-object v1, v4, v0

    .line 80
    .local v4, from:[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    .line 82
    .local v5, to:[I
    new-instance v12, Lcom/android/settings/ZoneList$MyComparator;

    const-string v0, "offset"

    invoke-direct {v12, v0}, Lcom/android/settings/ZoneList$MyComparator;-><init>(Ljava/lang/String;)V

    .line 84
    .local v12, comparator:Lcom/android/settings/ZoneList$MyComparator;
    invoke-direct {p0}, Lcom/android/settings/ZoneList;->getZones()Ljava/util/List;

    move-result-object v2

    .line 85
    .local v2, timezoneSortedList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    invoke-static {v2, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x1090004

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/settings/ZoneList;->mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

    .line 92
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    .local v8, alphabeticalList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    const-string v0, "name"

    invoke-virtual {v12, v0}, Lcom/android/settings/ZoneList$MyComparator;->setSortingKey(Ljava/lang/String;)V

    .line 94
    invoke-static {v8, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    new-instance v6, Landroid/widget/SimpleAdapter;

    const v9, 0x1090004

    move-object v7, p0

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v6, p0, Lcom/android/settings/ZoneList;->mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/ZoneList;->setSorting(Z)V

    .line 105
    iget v0, p0, Lcom/android/settings/ZoneList;->mDefault:I

    invoke-virtual {p0, v0}, Lcom/android/settings/ZoneList;->setSelection(I)V

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ZoneList;->setResult(I)V

    .line 109
    return-void

    .line 80
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    const v0, 0x7f0800ec

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 115
    const/4 v0, 0x2

    const v1, 0x7f0800ed

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02002e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 118
    return v3
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 232
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 234
    .local v1, map:Ljava/util/Map;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/settings/ZoneList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 235
    .local v0, alarm:Landroid/app/AlarmManager;
    const-string v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 236
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/ZoneList;->setResult(I)V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/ZoneList;->finish()V

    .line 238
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 148
    :goto_0
    return v0

    .line 140
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/settings/ZoneList;->setSorting(Z)V

    move v0, v1

    .line 141
    goto :goto_0

    .line 144
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/ZoneList;->setSorting(Z)V

    move v0, v1

    .line 145
    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    iget-boolean v0, p0, Lcom/android/settings/ZoneList;->mSortedByTimezone:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 126
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 132
    :goto_0
    return v1

    .line 128
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 129
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
