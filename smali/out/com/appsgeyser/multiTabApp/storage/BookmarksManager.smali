.class public Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BookmarksManager.java"


# instance fields
.field private final BOOKMARKS_PAGE_PREFIX:Ljava/lang/String;

.field private BOOKMARKS_TABLE_CREATE:Ljava/lang/String;

.field private BOOKMARKS_TABLE_NAME:Ljava/lang/String;

.field private final DATABASE_NAME:Ljava/lang/String;

.field private _context:Landroid/content/Context;

.field private _name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bookmarks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p2, v0, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "BookmarksPage"

    .line 13
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->BOOKMARKS_PAGE_PREFIX:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->_context:Landroid/content/Context;

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->DATABASE_NAME:Ljava/lang/String;

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->BOOKMARKS_TABLE_NAME:Ljava/lang/String;

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CREATE TABLE "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->BOOKMARKS_TABLE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " integer primary key autoincrement, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " TEXT, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " TEXT);"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->BOOKMARKS_TABLE_CREATE:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addBookmark(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 50
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    .line 52
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "url"

    .line 53
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->BOOKMARKS_TABLE_NAME:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public getBookmarks()Landroid/database/Cursor;
    .registers 3

    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->getBookmarks(Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getBookmarks(Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/database/Cursor;
    .registers 12

    .line 67
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, ""

    if-eqz p2, :cond_22

    .line 69
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " limit "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_22
    if-eqz p1, :cond_40

    .line 70
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_40

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " offset "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v8, p1

    goto :goto_41

    :cond_40
    move-object v8, v1

    .line 71
    :goto_41
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->BOOKMARKS_TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->BOOKMARKS_TABLE_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DROP TABLE IF EXISTS "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->BOOKMARKS_TABLE_NAME:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public removeBookmark(Ljava/lang/Integer;)V
    .registers 6

    .line 58
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->BOOKMARKS_TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "id=?"

    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
