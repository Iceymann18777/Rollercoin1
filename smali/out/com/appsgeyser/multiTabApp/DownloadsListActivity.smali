.class public Lcom/appsgeyser/multiTabApp/DownloadsListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DownloadsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_LIST_MSG:Ljava/lang/String;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final IDM_DELETE:I

.field private _dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

.field activityReceiver:Landroid/content/BroadcastReceiver;

.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;",
            ">;"
        }
    .end annotation
.end field

.field downloadManager:Landroid/app/DownloadManager;

.field private downloadsItemAdapter:Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;",
            ">;"
        }
    .end annotation
.end field

.field private myTimer:Ljava/util/Timer;

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->DOWNLOAD_LIST_MSG:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->IDM_DELETE:I

    .line 284
    new-instance v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$2;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$2;-><init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->comparator:Ljava/util/Comparator;

    .line 299
    new-instance v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;-><init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->activityReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->itemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->fileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/Timer;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->myTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->myTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .registers 1

    .line 47
    sget-object v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadsItemAdapter:Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    return-object p0
.end method

.method private fileExt(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    const-string v1, "?"

    .line 130
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_14
    const-string v1, "."

    .line 133
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1e

    return-object v0

    .line 136
    :cond_1e
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "%"

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_38
    const-string v0, "/"

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 143
    :cond_48
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4d
    return-object v0
.end method


# virtual methods
.method public delete()V
    .registers 4

    .line 204
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->_dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "downloadsList"

    const/4 v2, 0x0

    .line 206
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public delete(I)V
    .registers 7

    .line 195
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getId_d()J

    move-result-wide v0

    .line 196
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->_dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id_d = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadsList"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 199
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 200
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadsItemAdapter:Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemList()Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 212
    new-instance v1, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    invoke-direct {v1, v0}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->_dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    iget-object v2, v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->_dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "downloadsList"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v2

    .line 215
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 217
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_12c

    const-string v4, "name"

    .line 220
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "description"

    .line 221
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "id_d"

    .line 222
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "link_d"

    .line 223
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "file_path"

    .line 224
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "date"

    .line 225
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 228
    :cond_4b
    new-instance v10, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setDescription(Ljava/lang/String;)V

    .line 230
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setFile_path(Ljava/lang/String;)V

    .line 231
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setId_d(J)V

    .line 232
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setLink_d(Ljava/lang/String;)V

    .line 233
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setDate(Ljava/lang/Long;)V

    .line 235
    new-instance v11, Landroid/app/DownloadManager$Query;

    invoke-direct {v11}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v12, 0x1

    new-array v12, v12, [J

    const/4 v13, 0x0

    .line 236
    invoke-virtual {v10}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getId_d()J

    move-result-wide v14

    aput-wide v14, v12, v13

    invoke-virtual {v11, v12}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 237
    iget-object v12, v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v12, v11}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v11

    .line 238
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_120

    const-string v12, "status"

    .line 240
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_modified_timestamp"

    .line 242
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 244
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v14, "total_size"

    .line 246
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 245
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x2

    if-eq v12, v15, :cond_107

    const/16 v14, 0x8

    const-wide/16 v15, 0x0

    if-eq v12, v14, :cond_e4

    const/16 v14, 0x10

    if-eq v12, v14, :cond_c1

    goto :goto_120

    .line 254
    :cond_c1
    sget-object v12, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->Fail:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {v10, v12}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setStatus(Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;)V

    .line 255
    invoke-virtual {v10}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getDate()Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_d8

    invoke-virtual {v10}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getDate()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v12, v17, v15

    if-nez v12, :cond_120

    .line 256
    :cond_d8
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setDate(Ljava/lang/Long;)V

    goto :goto_120

    .line 249
    :cond_e4
    sget-object v12, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->Ok:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {v10, v12}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setStatus(Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;)V

    .line 250
    invoke-virtual {v10}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getDate()Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_fb

    invoke-virtual {v10}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getDate()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v12, v17, v15

    if-nez v12, :cond_120

    .line 251
    :cond_fb
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setDate(Ljava/lang/Long;)V

    goto :goto_120

    .line 264
    :cond_107
    sget-object v12, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {v10, v12}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setStatus(Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;)V

    const-string v12, "bytes_so_far"

    .line 265
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x64

    .line 266
    div-int/2addr v12, v14

    .line 267
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setProgress(Ljava/lang/Integer;)V

    .line 271
    :cond_120
    :goto_120
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 273
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_4b

    .line 276
    :cond_12c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 277
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 279
    iget-object v2, v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 345
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 346
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 347
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_10

    goto :goto_17

    .line 349
    :cond_10
    sget-object p1, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 350
    :try_start_13
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->delete(I)V

    .line 351
    monitor-exit p1

    :goto_17
    return v1

    :catchall_18
    move-exception v0

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 65
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/utils/ThemeUtils;->setCurrentThemeWithNoActionBar(Landroid/app/Activity;)V

    const p1, 0x7f0d001d

    .line 67
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->setContentView(I)V

    .line 68
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    const p1, 0x7f0a00c9

    .line 69
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 70
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f12008f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 78
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 79
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 80
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    :cond_67
    new-instance v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->itemList:Ljava/util/List;

    const v2, 0x7f0d0054

    invoke-direct {v0, p0, v2, v1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadsItemAdapter:Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    .line 85
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->registerForContextMenu(Landroid/view/View;)V

    const-string v0, "download"

    .line 87
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadManager:Landroid/app/DownloadManager;

    .line 88
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getItemList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->itemList:Ljava/util/List;

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->DOWNLOAD_LIST_MSG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->activityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    new-instance v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->itemList:Ljava/util/List;

    invoke-direct {v0, p0, v2, v1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadsItemAdapter:Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    .line 94
    new-instance v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;-><init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadsItemAdapter:Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->myTimer:Ljava/util/Timer;

    .line 125
    new-instance v2, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;

    const/4 p1, 0x0

    invoke-direct {v2, p0, p1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;-><init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    .line 330
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 333
    :try_start_3
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_5} :catch_1f

    .line 338
    iget p2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 339
    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->itemList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/4 p2, 0x1

    const p3, 0x7f120087

    const/4 v0, 0x0

    .line 340
    invoke-interface {p1, v0, p2, v0, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void

    :catch_1f
    move-exception p1

    const-string p2, "onCreateContextMenu"

    const-string p3, "bad menuInfo"

    .line 335
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 359
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .registers 2

    .line 379
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 380
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->activityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 365
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1a

    const v0, 0x7f0a00ab

    if-eq p1, v0, :cond_11

    const/4 p1, 0x0

    return p1

    .line 367
    :cond_11
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->delete()V

    .line 368
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadsItemAdapter:Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;->notifyDataSetChanged()V

    return v1

    .line 371
    :cond_1a
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->finish()V

    return v1
.end method

.method protected onStop()V
    .registers 1

    .line 385
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
