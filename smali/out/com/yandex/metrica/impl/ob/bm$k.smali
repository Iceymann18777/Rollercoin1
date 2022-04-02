.class final Lcom/yandex/metrica/impl/ob/bm$k;
.super Lcom/yandex/metrica/impl/ob/bm$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 810
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bm$l;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 810
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bm$k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "CREATE TABLE IF NOT EXISTS permissions (name TEXT PRIMARY KEY,granted INTEGER)"

    .line 813
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
