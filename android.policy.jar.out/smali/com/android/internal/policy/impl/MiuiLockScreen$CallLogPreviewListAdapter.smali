.class Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;
.super Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;
.source "MiuiLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallLogPreviewListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;
    }
.end annotation


# static fields
.field static final CALLER_NAME_COLUMN_INDEX:I = 0x4

.field static final DATE_COLUMN_INDEX:I = 0x2

.field static final DURATION_COLUMN_INDEX:I = 0x3

.field static final ID_COLUMN_INDEX:I = 0x0

.field static final NUMBER_COLUMN_INDEX:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    .line 1169
    const v0, 0x6030014

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 1170
    return-void
.end method

.method private formatRingDuration(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "elapsedSeconds"

    .prologue
    .line 1218
    const-wide/16 v2, 0x5

    div-long v2, p2, v2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 1219
    .local v0, ringCount:J
    const v2, 0x6090081

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1188
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;

    .line 1189
    .local v13, views:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;
    const/4 v14, 0x1

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1190
    .local v11, number:Ljava/lang/String;
    const/4 v14, 0x4

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1191
    .local v4, callerName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->getContact(Ljava/lang/String;)Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;

    move-result-object v9

    .line 1193
    .local v9, info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    if-eqz v9, :cond_0

    iget-object v14, v9, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1194
    iget-object v4, v9, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;->name:Ljava/lang/String;

    .line 1198
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-static {v14, v11}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1199
    .local v10, location:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1200
    const-string v10, ""

    .line 1202
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1203
    iget-object v14, v13, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->line1View:Landroid/widget/TextView;

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->getValidatedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1205
    .local v12, numberInfo:Ljava/lang/String;
    iget-object v14, v13, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->numberView:Landroid/widget/TextView;

    const-string v15, "%s  %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    const/16 v17, 0x1

    aput-object v10, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    .end local v12           #numberInfo:Ljava/lang/String;
    :goto_0
    const/4 v14, 0x2

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1212
    .local v5, date:J
    iget-object v14, v13, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->dateView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->formatDate(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    const/4 v14, 0x3

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1214
    .local v7, duration:J
    iget-object v14, v13, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->durationView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->mContext:Landroid/content/Context;

    move-object v15, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move-wide v2, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->formatRingDuration(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1215
    return-void

    .line 1207
    .end local v5           #date:J
    .end local v7           #duration:J
    :cond_2
    iget-object v14, v13, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->line1View:Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->getValidatedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    iget-object v14, v13, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->numberView:Landroid/widget/TextView;

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public markRead(Landroid/content/Context;I)V
    .locals 10
    .parameter "context"
    .parameter "position"

    .prologue
    const/4 v9, 0x0

    .line 1174
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1175
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1177
    .local v1, id:J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1178
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "new"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1179
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1184
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1224
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1227
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;)V

    .line 1228
    .local v1, views:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;
    const v2, 0x60d002f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->line1View:Landroid/widget/TextView;

    .line 1229
    const v2, 0x60d0031

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->numberView:Landroid/widget/TextView;

    .line 1230
    const v2, 0x60d0030

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->dateView:Landroid/widget/TextView;

    .line 1231
    const v2, 0x60d0029

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter$ListItemViews;->durationView:Landroid/widget/TextView;

    .line 1232
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1234
    return-object v0
.end method

.method protected onQueryResultCount(I)V
    .locals 5
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1239
    if-lez p1, :cond_1

    .line 1240
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$400(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/SlidingPanel;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/miui/internal/policy/impl/SlidingPanel;->setSliderText(ILjava/lang/String;)V

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1241
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$400(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/SlidingPanel;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->getSliderTextVisibility(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1242
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$400(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/SlidingPanel;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/miui/internal/policy/impl/SlidingPanel;->setSliderText(ILjava/lang/String;)V

    .line 1244
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    const-string v2, "com.android.phone"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1246
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1247
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
