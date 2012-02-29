.class public Lcom/android/settings/LocalePicker;
.super Landroid/app/ListActivity;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LocalePicker$LocaleRecord;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/LocaleAdapter;

.field private mCustomizedCountry:Ljava/lang/String;

.field private mCustomizedLanguage:Ljava/lang/String;

.field private mDefaultSimCountry:Ljava/lang/String;

.field private mDefaultSwCountry:Ljava/lang/String;

.field private mDefaultSwLanguage:Ljava/lang/String;

.field private mDoneButton:Landroid/widget/Button;

.field private mSpecialLocaleCodesDisplayLanguages:[Ljava/lang/String;

.field private mSpecialLocaleCodesDisplayNames:[Ljava/lang/String;

.field private mSpecialLocaleDisplayLanguages:[Ljava/lang/String;

.field private mSpecialLocaleDisplayNames:[Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 114
    return-void
.end method

.method private addLocale(Ljava/util/Locale;Ljava/util/Hashtable;)V
    .locals 2
    .parameter "l"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Locale;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p2, map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ArrayList<Ljava/util/Locale;>;>;"
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :goto_0
    return-void

    .line 396
    .restart local p0
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v0, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Locale;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private buildHashtable([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 13
    .parameter "locales"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Locale;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 353
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 354
    .local v9, preprocess:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ArrayList<Ljava/util/Locale;>;>;"
    const/4 v4, 0x0

    .line 355
    .local v4, isSwLocaleValid:Z
    const/4 v3, 0x0

    .line 356
    .local v3, isSimCountryValid:Z
    const/4 v8, 0x0

    .line 358
    .local v8, nbrOfLanguagesOnTop:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v7, :cond_5

    aget-object v10, v0, v2

    .line 359
    .local v10, s:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_3

    .line 360
    invoke-direct {p0, v10}, Lcom/android/settings/LocalePicker;->getLanguagePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 361
    .local v6, language:Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/android/settings/LocalePicker;->getCountryPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, country:Ljava/lang/String;
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v6, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .local v5, l:Ljava/util/Locale;
    invoke-direct {p0, v5}, Lcom/android/settings/LocalePicker;->isDefaultLocale(Ljava/util/Locale;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 364
    add-int/lit8 v8, v8, 0x1

    .line 370
    :cond_0
    if-nez v4, :cond_1

    .line 371
    iget-object v11, p0, Lcom/android/settings/LocalePicker;->mDefaultSwLanguage:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/settings/LocalePicker;->mDefaultSwCountry:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    move v4, v11

    .line 374
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 375
    iget-object v11, p0, Lcom/android/settings/LocalePicker;->mDefaultSimCountry:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 377
    :cond_2
    invoke-direct {p0, v5, v9}, Lcom/android/settings/LocalePicker;->addLocale(Ljava/util/Locale;Ljava/util/Hashtable;)V

    .line 358
    .end local v1           #country:Ljava/lang/String;
    .end local v5           #l:Ljava/util/Locale;
    .end local v6           #language:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    .restart local v1       #country:Ljava/lang/String;
    .restart local v5       #l:Ljava/util/Locale;
    .restart local v6       #language:Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    move v4, v11

    goto :goto_1

    .line 380
    .end local v1           #country:Ljava/lang/String;
    .end local v5           #l:Ljava/util/Locale;
    .end local v6           #language:Ljava/lang/String;
    .end local v10           #s:Ljava/lang/String;
    :cond_5
    if-nez v8, :cond_6

    .line 382
    invoke-direct {p0, v4, v3}, Lcom/android/settings/LocalePicker;->changeStateWhenNoDefaultLocale(ZZ)V

    .line 384
    :cond_6
    invoke-virtual {v9}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v11

    return-object v11
.end method

.method private changeStateWhenNoDefaultLocale(ZZ)V
    .locals 3
    .parameter "isSwLocaleValid"
    .parameter "isSimCountryValid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 444
    iget v0, p0, Lcom/android/settings/LocalePicker;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 467
    :pswitch_0
    const-string v0, "LocalePicker"

    const-string v1, "Error, wrong state. Defaulting to resolve default locale"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-direct {p0, v2}, Lcom/android/settings/LocalePicker;->setState(I)V

    .line 471
    :goto_0
    return-void

    .line 448
    :pswitch_1
    if-eqz p2, :cond_0

    .line 449
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/LocalePicker;->setState(I)V

    goto :goto_0

    .line 450
    :cond_0
    if-eqz p1, :cond_1

    .line 451
    invoke-direct {p0, v1}, Lcom/android/settings/LocalePicker;->setState(I)V

    goto :goto_0

    .line 453
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/LocalePicker;->setState(I)V

    goto :goto_0

    .line 457
    :pswitch_2
    if-eqz p1, :cond_2

    .line 458
    invoke-direct {p0, v1}, Lcom/android/settings/LocalePicker;->setState(I)V

    goto :goto_0

    .line 460
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings/LocalePicker;->setState(I)V

    goto :goto_0

    .line 464
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/settings/LocalePicker;->setState(I)V

    goto :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private divideAndSortLists(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Locale;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/LocalePicker$LocaleRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/ArrayList<Ljava/util/Locale;>;>;"
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v0, adapterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/LocalePicker$LocaleRecord;>;"
    const/4 v1, 0x0

    .line 288
    .local v1, currentLocaleAdded:Z
    const/4 v8, 0x0

    .line 290
    .local v8, nbrOfLanguagesOnTop:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 291
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 293
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Locale;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 294
    .local v5, listSize:I
    if-le v5, v12, :cond_3

    .line 296
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Locale;

    .line 297
    .local v7, locale:Ljava/util/Locale;
    new-instance v6, Lcom/android/settings/LocalePicker$LocaleRecord;

    invoke-direct {p0, v7}, Lcom/android/settings/LocalePicker;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11, v7}, Lcom/android/settings/LocalePicker$LocaleRecord;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 298
    .local v6, loc:Lcom/android/settings/LocalePicker$LocaleRecord;
    invoke-direct {p0, v7}, Lcom/android/settings/LocalePicker;->isDefaultLocale(Ljava/util/Locale;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 299
    invoke-virtual {v0, v13, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 300
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 301
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 302
    invoke-virtual {v0, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 303
    const/4 v1, 0x1

    goto :goto_1

    .line 305
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 308
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #loc:Lcom/android/settings/LocalePicker$LocaleRecord;
    .end local v7           #locale:Ljava/util/Locale;
    :cond_3
    if-lez v5, :cond_0

    .line 310
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 311
    .local v3, l:Ljava/util/Locale;
    new-instance v6, Lcom/android/settings/LocalePicker$LocaleRecord;

    invoke-direct {p0, v3}, Lcom/android/settings/LocalePicker;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11, v3}, Lcom/android/settings/LocalePicker$LocaleRecord;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 312
    .restart local v6       #loc:Lcom/android/settings/LocalePicker$LocaleRecord;
    invoke-direct {p0, v3}, Lcom/android/settings/LocalePicker;->isDefaultLocale(Ljava/util/Locale;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 313
    invoke-virtual {v0, v13, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 314
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 315
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 316
    invoke-virtual {v0, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 317
    const/4 v1, 0x1

    goto :goto_0

    .line 319
    :cond_5
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 325
    .end local v3           #l:Ljava/util/Locale;
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Locale;>;"
    .end local v5           #listSize:I
    .end local v6           #loc:Lcom/android/settings/LocalePicker$LocaleRecord;
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 326
    .local v9, size:I
    if-eqz v1, :cond_9

    add-int/lit8 v11, v8, 0x1

    move v10, v11

    .line 329
    .local v10, startIndex:I
    :goto_2
    sub-int v11, v9, v10

    if-le v11, v12, :cond_7

    .line 330
    invoke-virtual {v0, v10, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 333
    :cond_7
    if-le v8, v12, :cond_8

    .line 334
    iget v11, p0, Lcom/android/settings/LocalePicker;->mState:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_a

    .line 335
    invoke-virtual {v0, v13, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/LocalePicker;->rearrangeCustomizedToplist(Ljava/util/List;)V

    .line 341
    :cond_8
    :goto_3
    new-instance v11, Lcom/android/settings/LocalePicker$LocaleRecord;

    invoke-direct {v11}, Lcom/android/settings/LocalePicker$LocaleRecord;-><init>()V

    invoke-virtual {v0, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 342
    return-object v0

    .end local v10           #startIndex:I
    :cond_9
    move v10, v8

    .line 326
    goto :goto_2

    .line 337
    .restart local v10       #startIndex:I
    :cond_a
    invoke-virtual {v0, v13, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_3
.end method

.method private getCountryPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 427
    const/4 v0, 0x3

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultSimCountry(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2
    .parameter "manager"

    .prologue
    .line 563
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "l"

    .prologue
    .line 494
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodesDisplayLanguages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 497
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodesDisplayLanguages:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleDisplayLanguages:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 502
    :goto_1
    return-object v2

    .line 496
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    :cond_1
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "l"

    .prologue
    .line 482
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodesDisplayNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 485
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodesDisplayNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleDisplayNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 490
    :goto_1
    return-object v2

    .line 484
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    :cond_1
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getLanguagePart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 435
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 544
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private isDefaultLocale(Ljava/util/Locale;)Z
    .locals 5
    .parameter "locale"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, isDefaultLocale:Z
    if-eqz p1, :cond_0

    .line 517
    iget v1, p0, Lcom/android/settings/LocalePicker;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 536
    const-string v1, "LocalePicker"

    const-string v2, "Error, unsupported state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_0
    :goto_0
    return v0

    .line 519
    :pswitch_0
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mCustomizedCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mCustomizedLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    .line 521
    :goto_1
    goto :goto_0

    :cond_1
    move v0, v3

    .line 519
    goto :goto_1

    .line 523
    :pswitch_1
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mCustomizedCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 524
    goto :goto_0

    .line 526
    :pswitch_2
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mDefaultSimCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 527
    goto :goto_0

    .line 529
    :pswitch_3
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mDefaultSwCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mDefaultSwLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v4

    .line 531
    :goto_2
    goto :goto_0

    :cond_2
    move v0, v3

    .line 529
    goto :goto_2

    .line 533
    :pswitch_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 534
    goto :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSimStateReady(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .parameter "manager"

    .prologue
    .line 553
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rearrangeCustomizedToplist(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/LocalePicker$LocaleRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, topList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/LocalePicker$LocaleRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 409
    .local v1, size:I
    new-instance v2, Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mCustomizedLanguage:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/LocalePicker;->mCustomizedCountry:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .local v2, topLocale:Ljava/util/Locale;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 411
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/LocalePicker$LocaleRecord;

    iget-object v3, p0, Lcom/android/settings/LocalePicker$LocaleRecord;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 412
    const/4 v3, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 416
    :cond_0
    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    .line 417
    const/4 v3, 0x1

    invoke-interface {p1, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 419
    :cond_1
    return-void

    .line 410
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 506
    iput p1, p0, Lcom/android/settings/LocalePicker;->mState:I

    .line 507
    return-void
.end method

.method private setUpDefaultLocales()V
    .locals 6

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/settings/LocalePicker;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 228
    .local v3, manager:Landroid/telephony/TelephonyManager;
    invoke-direct {p0, v3}, Lcom/android/settings/LocalePicker;->isSimStateReady(Landroid/telephony/TelephonyManager;)Z

    move-result v2

    .line 231
    .local v2, isSimReady:Z
    if-eqz v2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/settings/LocalePicker;->getDefaultSimCountry(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lcom/android/settings/LocalePicker;->mDefaultSimCountry:Ljava/lang/String;

    .line 232
    const-string v4, "ro.product.locale.language"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LocalePicker;->mDefaultSwLanguage:Ljava/lang/String;

    .line 233
    const-string v4, "ro.product.locale.region"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LocalePicker;->mDefaultSwCountry:Ljava/lang/String;

    .line 236
    const-string v4, "default-locale"

    invoke-static {p0, v4}, Lcom/android/settings/CustomizedSettings;->getGeneralSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, custLocaleStr:Ljava/lang/String;
    const-string v4, "locale-sortorder"

    invoke-static {p0, v4}, Lcom/android/settings/CustomizedSettings;->getGeneralSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, custLocaleType:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 242
    invoke-direct {p0, v0}, Lcom/android/settings/LocalePicker;->getCountryPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LocalePicker;->mCustomizedCountry:Ljava/lang/String;

    .line 243
    invoke-direct {p0, v0}, Lcom/android/settings/LocalePicker;->getLanguagePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LocalePicker;->mCustomizedLanguage:Ljava/lang/String;

    .line 244
    if-eqz v1, :cond_2

    const-string v4, "single"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 245
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/settings/LocalePicker;->setState(I)V

    .line 255
    :cond_0
    :goto_1
    return-void

    .line 231
    .end local v0           #custLocaleStr:Ljava/lang/String;
    .end local v1           #custLocaleType:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 246
    .restart local v0       #custLocaleStr:Ljava/lang/String;
    .restart local v1       #custLocaleType:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    const-string v4, "top"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    :cond_3
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/android/settings/LocalePicker;->setState(I)V

    goto :goto_1

    .line 250
    :cond_4
    if-eqz v2, :cond_5

    .line 251
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/settings/LocalePicker;->setState(I)V

    goto :goto_1

    .line 253
    :cond_5
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/settings/LocalePicker;->setState(I)V

    goto :goto_1
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 474
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 478
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected buildLanguageList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "locales"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/LocalePicker$LocaleRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/android/settings/LocalePicker;->buildHashtable([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/LocalePicker;->divideAndSortLists(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getContentView()I
    .locals 1

    .prologue
    .line 172
    const v0, 0x7f03001e

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mDoneButton:Landroid/widget/Button;

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePicker;->setTitle(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePicker;->setContentView(I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodesDisplayNames:[Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleDisplayNames:[Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodesDisplayLanguages:[Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleDisplayLanguages:[Ljava/lang/String;

    .line 190
    invoke-direct {p0}, Lcom/android/settings/LocalePicker;->setUpDefaultLocales()V

    .line 193
    new-instance v0, Lcom/android/settings/LocaleAdapter;

    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/LocalePicker;->buildLanguageList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/LocaleAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->mAdapter:Lcom/android/settings/LocaleAdapter;

    .line 194
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mAdapter:Lcom/android/settings/LocaleAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 198
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->mDoneButton:Landroid/widget/Button;

    .line 200
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mDoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/LocalePicker$1;

    invoke-direct {v1, p0}, Lcom/android/settings/LocalePicker$1;-><init>(Lcom/android/settings/LocalePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 568
    invoke-virtual {p1, p3, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 569
    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mAdapter:Lcom/android/settings/LocaleAdapter;

    invoke-virtual {v3, p3}, Lcom/android/settings/LocaleAdapter;->getLocale(I)Ljava/util/Locale;

    move-result-object v2

    .line 571
    .local v2, locale:Ljava/util/Locale;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 572
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 573
    .local v1, config:Landroid/content/res/Configuration;
    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 575
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 576
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 578
    const-string v3, "com.android.providers.settings"

    invoke-static {v3}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->requestFocus()Z

    .line 583
    return-void

    .line 579
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LocalePicker;->mAdapter:Lcom/android/settings/LocaleAdapter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/LocaleAdapter;->getPosition(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 221
    return-void
.end method
