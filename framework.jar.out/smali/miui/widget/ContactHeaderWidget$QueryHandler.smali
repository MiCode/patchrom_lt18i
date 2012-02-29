.class Lmiui/widget/ContactHeaderWidget$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ContactHeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ContactHeaderWidget;


# direct methods
.method public constructor <init>(Lmiui/widget/ContactHeaderWidget;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 255
    iput-object p1, p0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    .line 256
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 257
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 21
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 262
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    #getter for: Lmiui/widget/ContactHeaderWidget;->mQueryHandler:Lmiui/widget/ContactHeaderWidget$QueryHandler;
    invoke-static/range {v18 .. v18}, Lmiui/widget/ContactHeaderWidget;->access$000(Lmiui/widget/ContactHeaderWidget;)Lmiui/widget/ContactHeaderWidget$QueryHandler;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 263
    const-string v18, "ContactHeaderWidget"

    const-string v19, "onQueryComplete: discard result, the query handler is reset!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    if-eqz p3, :cond_0

    .line 383
    .end local p2
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_0
    return-void

    .line 267
    .restart local p2
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 382
    .end local p2
    :cond_2
    :goto_1
    if-eqz p3, :cond_0

    goto :goto_0

    .line 270
    .restart local p2
    :pswitch_0
    const/4 v13, 0x0

    .line 271
    .local v13, photoBitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_3

    :try_start_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-nez v18, :cond_3

    .line 273
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 274
    .local v14, photoData:[B
    const/16 v18, 0x0

    move-object v0, v14

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 278
    .end local v14           #photoData:[B
    :cond_3
    if-nez v13, :cond_4

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lmiui/widget/ContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    invoke-static/range {v18 .. v19}, Lmiui/widget/ContactHeaderWidget;->access$100(Lmiui/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 281
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    #getter for: Lmiui/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;
    invoke-static/range {v18 .. v18}, Lmiui/widget/ContactHeaderWidget;->access$200(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v18

    const/16 v19, 0x7

    const/16 v20, 0x7

    move-object v0, v13

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lmiui/util/GraphicsUtils;->makeRoundImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 283
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_5

    .line 284
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 285
    const-string v18, "ContactHeaderWidget"

    const-string v19, "bitmap after make round image recycle"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_5
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/net/Uri;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    #getter for: Lmiui/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;
    invoke-static/range {v18 .. v18}, Lmiui/widget/ContactHeaderWidget;->access$200(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v18

    check-cast p2, Landroid/net/Uri;

    .end local p2
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 291
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/widget/ContactHeaderWidget;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 382
    .end local v13           #photoBitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v18

    if-eqz p3, :cond_7

    .line 383
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_7
    throw v18

    .line 295
    .restart local p2
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    #getter for: Lmiui/widget/ContactHeaderWidget;->mUnknownContactLocation:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lmiui/widget/ContactHeaderWidget;->access$300(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    if-eqz p3, :cond_a

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lmiui/widget/ContactHeaderWidget;->bindContactInfo(Landroid/database/Cursor;)V

    .line 299
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 300
    .local v6, contactId:J
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-wide v0, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 303
    .local v11, lookupUri:Landroid/net/Uri;
    const/16 v18, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 305
    .local v15, photoId:J
    const-wide/16 v18, 0x0

    cmp-long v18, v15, v18

    if-nez v18, :cond_9

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    #getter for: Lmiui/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;
    invoke-static/range {v18 .. v18}, Lmiui/widget/ContactHeaderWidget;->access$200(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v18

    const v19, 0x6020248

    invoke-virtual/range {v18 .. v19}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 307
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/net/Uri;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    #getter for: Lmiui/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;
    invoke-static/range {v18 .. v18}, Lmiui/widget/ContactHeaderWidget;->access$200(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v18

    check-cast p2, Landroid/net/Uri;

    .end local p2
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 310
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/widget/ContactHeaderWidget;->invalidate()V

    .line 316
    :goto_2
    sget-object v18, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-wide v1, v6

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    const-string v19, "data"

    invoke-static/range {v18 .. v19}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 320
    .local v8, dataUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object v1, v8

    move/from16 v2, v19

    #calls: Lmiui/widget/ContactHeaderWidget;->startContactOrganizationQuery(Landroid/net/Uri;Z)V
    invoke-static {v0, v1, v2}, Lmiui/widget/ContactHeaderWidget;->access$400(Lmiui/widget/ContactHeaderWidget;Landroid/net/Uri;Z)V

    goto/16 :goto_1

    .line 312
    .end local v8           #dataUri:Landroid/net/Uri;
    .restart local p2
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-wide v1, v15

    move-object v3, v11

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/widget/ContactHeaderWidget;->startPhotoQuery(JLandroid/net/Uri;Z)V

    goto :goto_2

    .line 323
    .end local v6           #contactId:J
    .end local v11           #lookupUri:Landroid/net/Uri;
    .end local v15           #photoId:J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lmiui/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lmiui/widget/ContactHeaderWidget;->setSocialSnippet(Ljava/lang/CharSequence;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lmiui/widget/ContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    invoke-static/range {v19 .. v20}, Lmiui/widget/ContactHeaderWidget;->access$100(Lmiui/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lmiui/widget/ContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 330
    :pswitch_2
    if-eqz p3, :cond_b

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 331
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 332
    .restart local v6       #contactId:J
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 334
    .local v10, lookupKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    invoke-static {v6, v7, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x0

    #calls: Lmiui/widget/ContactHeaderWidget;->bindFromContactUriInternal(Landroid/net/Uri;Z)V
    invoke-static/range {v18 .. v20}, Lmiui/widget/ContactHeaderWidget;->access$500(Lmiui/widget/ContactHeaderWidget;Landroid/net/Uri;Z)V

    goto/16 :goto_1

    .line 337
    .end local v6           #contactId:J
    .end local v10           #lookupKey:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 338
    .local v12, phoneNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object v1, v12

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmiui/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lmiui/widget/ContactHeaderWidget;->setSocialSnippet(Ljava/lang/CharSequence;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lmiui/widget/ContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    invoke-static/range {v19 .. v20}, Lmiui/widget/ContactHeaderWidget;->access$100(Lmiui/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lmiui/widget/ContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    #getter for: Lmiui/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;
    invoke-static/range {v18 .. v18}, Lmiui/widget/ContactHeaderWidget;->access$200(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object v1, v12

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 346
    .end local v12           #phoneNumber:Ljava/lang/String;
    :pswitch_3
    if-eqz p3, :cond_c

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 347
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 348
    .restart local v6       #contactId:J
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 350
    .restart local v10       #lookupKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    invoke-static {v6, v7, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x0

    #calls: Lmiui/widget/ContactHeaderWidget;->bindFromContactUriInternal(Landroid/net/Uri;Z)V
    invoke-static/range {v18 .. v20}, Lmiui/widget/ContactHeaderWidget;->access$500(Lmiui/widget/ContactHeaderWidget;Landroid/net/Uri;Z)V

    goto/16 :goto_1

    .line 353
    .end local v6           #contactId:J
    .end local v10           #lookupKey:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 354
    .local v9, emailAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object v1, v9

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmiui/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lmiui/widget/ContactHeaderWidget;->setSocialSnippet(Ljava/lang/CharSequence;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lmiui/widget/ContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    invoke-static/range {v19 .. v20}, Lmiui/widget/ContactHeaderWidget;->access$100(Lmiui/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lmiui/widget/ContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    #getter for: Lmiui/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;
    invoke-static/range {v18 .. v18}, Lmiui/widget/ContactHeaderWidget;->access$200(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object v1, v9

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 362
    .end local v9           #emailAddress:Ljava/lang/String;
    :pswitch_4
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 363
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, company:Ljava/lang/String;
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 365
    .local v17, title:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    #getter for: Lmiui/widget/ContactHeaderWidget;->mOrganizationTitle:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lmiui/widget/ContactHeaderWidget;->access$600(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    #getter for: Lmiui/widget/ContactHeaderWidget;->mOrganizationTitle:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lmiui/widget/ContactHeaderWidget;->access$600(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    #getter for: Lmiui/widget/ContactHeaderWidget;->mOrganizationCompany:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lmiui/widget/ContactHeaderWidget;->access$700(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    #getter for: Lmiui/widget/ContactHeaderWidget;->mOrganizationCompany:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lmiui/widget/ContactHeaderWidget;->access$700(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 369
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    #getter for: Lmiui/widget/ContactHeaderWidget;->mOrganizationTitle:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lmiui/widget/ContactHeaderWidget;->access$600(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 376
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;->this$0:Lmiui/widget/ContactHeaderWidget;

    move-object/from16 v18, v0

    #getter for: Lmiui/widget/ContactHeaderWidget;->mOrganizationCompany:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lmiui/widget/ContactHeaderWidget;->access$700(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
