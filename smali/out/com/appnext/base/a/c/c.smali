.class public final Lcom/appnext/base/a/c/c;
.super Lcom/appnext/base/a/c/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appnext/base/a/c/e<",
        "Lcom/appnext/base/a/b/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final dS:Ljava/lang/String; = "config_table"

.field public static final dV:Ljava/lang/String; = "key"

.field private static final dW:Ljava/lang/String; = "sample"

.field private static final dX:Ljava/lang/String; = "sample_type"

.field private static final dY:Ljava/lang/String; = "cycle"

.field private static final dZ:Ljava/lang/String; = "cycle_type"

.field private static final ea:Ljava/lang/String; = "service_key"

.field private static final eb:Ljava/lang/String; = "data"


# instance fields
.field private dU:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 19
    invoke-direct {p0}, Lcom/appnext/base/a/c/e;-><init>()V

    const-string v0, "key"

    const-string v1, "status"

    const-string v2, "sample"

    const-string v3, "sample_type"

    const-string v4, "cycle"

    const-string v5, "cycle_type"

    const-string v6, "service_key"

    const-string v7, "data"

    .line 32
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/base/a/c/c;->dU:[Ljava/lang/String;

    return-void
.end method

.method public static ar()Ljava/lang/String;
    .registers 1

    const-string v0, "create table config_table ( key text primary key, status text not null default \'off\', sample text not null default \'1\', sample_type text not null default \'\',cycle text not null default \'1\', cycle_type text not null default \'once\', service_key text not null default \'\', data text not null default \'\')"

    return-object v0
.end method

.method protected static c(Landroid/database/Cursor;)Lcom/appnext/base/a/b/c;
    .registers 11

    const-string v0, "key"

    .line 114
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "status"

    .line 115
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "sample"

    .line 116
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "sample_type"

    .line 117
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "cycle"

    .line 118
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "cycle_type"

    .line 119
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "service_key"

    .line 120
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "data"

    .line 121
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 123
    new-instance p0, Lcom/appnext/base/a/b/c;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/appnext/base/a/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/appnext/base/a/b/c;)J
    .registers 5

    .line 57
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->al()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sample"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->am()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sample_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->an()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cycle"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->ao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cycle_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->ap()Ljava/lang/String;

    move-result-object v1

    const-string v2, "service_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->aq()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 67
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    const-string p1, "config_table"

    .line 69
    invoke-static {p1, v0}, Lcom/appnext/base/a/c/e;->b(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lorg/json/JSONObject;)J
    .registers 4

    const-string v0, "config_table"

    .line 52
    invoke-super {p0, v0, p1}, Lcom/appnext/base/a/c/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final as()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/c;",
            ">;"
        }
    .end annotation

    const-string v0, "config_table"

    .line 86
    invoke-super {p0, v0}, Lcom/appnext/base/a/c/e;->y(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final at()[Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/appnext/base/a/c/c;->dU:[Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lorg/json/JSONArray;)J
    .registers 4

    const-string v0, "config_table"

    .line 48
    invoke-super {p0, v0, p1}, Lcom/appnext/base/a/c/e;->a(Ljava/lang/String;Lorg/json/JSONArray;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final synthetic b(Landroid/database/Cursor;)Lcom/appnext/base/a/b/d;
    .registers 12

    const-string v0, "key"

    .line 1114
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "status"

    .line 1115
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "sample"

    .line 1116
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "sample_type"

    .line 1117
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "cycle"

    .line 1118
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "cycle_type"

    .line 1119
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "service_key"

    .line 1120
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "data"

    .line 1121
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1123
    new-instance p1, Lcom/appnext/base/a/b/c;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/appnext/base/a/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final delete()V
    .registers 2

    const-string v0, "config_table"

    .line 73
    invoke-super {p0, v0}, Lcom/appnext/base/a/c/e;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .registers 6

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 80
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    sget-object v1, Lcom/appnext/base/a/c/e$a;->Equals:Lcom/appnext/base/a/c/e$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key"

    .line 82
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "config_table"

    invoke-super {p0, p1, v1, v2, v0}, Lcom/appnext/base/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I

    return-void
.end method

.method public final t(Ljava/lang/String;)Lcom/appnext/base/a/b/c;
    .registers 10

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 94
    :cond_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 95
    sget-object v0, Lcom/appnext/base/a/c/e$a;->Equals:Lcom/appnext/base/a/c/e$a;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key"

    .line 96
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v6, 0x0

    const-string v3, "config_table"

    move-object v2, p0

    invoke-super/range {v2 .. v7}, Lcom/appnext/base/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_35

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appnext/base/a/b/c;

    return-object p1

    :cond_35
    return-object v1
.end method
