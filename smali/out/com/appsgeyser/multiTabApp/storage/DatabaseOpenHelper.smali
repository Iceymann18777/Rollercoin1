.class public Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseOpenHelper.java"


# static fields
.field public static final SQL_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->SQL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "Storage"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 42
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE VIRTUAL TABLE history  USING fts3(visitTime DATETIME, title TEXT, url TEXT);"

    .line 47
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table downloadsList (id integer primary key autoincrement,name text,description text,id_d text,link_d text,file_path text,date integer,status text);"

    .line 48
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", which will destroy all old data"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "StorageDatabase"

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "DROP TABLE IF EXISTS history"

    .line 55
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS create table downloadsList (id integer primary key autoincrement,name text,description text,id_d text,link_d text,file_path text,date integer,status text);"

    .line 56
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
