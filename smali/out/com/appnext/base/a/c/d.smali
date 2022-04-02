.class public Lcom/appnext/base/a/c/d;
.super Lcom/appnext/base/a/c/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appnext/base/a/c/e<",
        "Lcom/appnext/base/a/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final COLUMN_TYPE:Ljava/lang/String; = "t"

.field public static final ec:Ljava/lang/String; = "pk"

.field public static final ed:Ljava/lang/String; = "cd"

.field public static final ee:Ljava/lang/String; = "cdd"

.field public static final ef:Ljava/lang/String; = "cdt"


# instance fields
.field private dU:[Ljava/lang/String;

.field private eg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    .line 30
    invoke-direct {p0}, Lcom/appnext/base/a/c/e;-><init>()V

    const-string v0, "pk"

    const-string v1, "t"

    const-string v2, "cd"

    const-string v3, "cdd"

    const-string v4, "cdt"

    .line 27
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/base/a/c/d;->dU:[Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/appnext/base/a/c/d;->eg:Ljava/lang/String;

    return-void
.end method

.method private static a(Z)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_5

    const-string p0, "primary key"

    return-object p0

    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method protected static b(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create table "

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " ( pk text not null, t text not null "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 139
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cd"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " text not null, cdd"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " text default (strftime(\'%s\',\'now\')), cdt"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " text)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/appnext/base/a/b/b;)Landroid/content/ContentValues;
    .registers 4

    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    invoke-virtual {p0}, Lcom/appnext/base/a/b/b;->ah()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pk"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/appnext/base/a/b/b;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "t"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/appnext/base/a/b/b;->ai()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cd"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/appnext/base/a/b/b;->getDataType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "cdt"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected static d(Landroid/database/Cursor;)Lcom/appnext/base/a/b/b;
    .registers 8

    const-string v0, "pk"

    .line 123
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "t"

    .line 124
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "cd"

    .line 125
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "cdd"

    .line 126
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    mul-long v0, v0, v5

    .line 2012
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 2013
    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2014
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    const-string v0, "cdt"

    .line 128
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 129
    new-instance p0, Lcom/appnext/base/a/b/b;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/appnext/base/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/appnext/base/a/b/b;)J
    .registers 4

    .line 36
    iget-object v0, p0, Lcom/appnext/base/a/c/d;->eg:Ljava/lang/String;

    invoke-static {p1}, Lcom/appnext/base/a/c/d;->c(Lcom/appnext/base/a/b/b;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/appnext/base/a/c/e;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lorg/json/JSONArray;)J
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/appnext/base/a/c/d;->eg:Ljava/lang/String;

    invoke-super {p0, v0, p1}, Lcom/appnext/base/a/c/e;->b(Ljava/lang/String;Lorg/json/JSONArray;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final as()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/appnext/base/a/c/d;->eg:Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/appnext/base/a/c/e;->y(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final at()[Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/appnext/base/a/c/d;->dU:[Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;J)I
    .registers 9

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    sget-object v1, Lcom/appnext/base/a/c/e$a;->Equals:Lcom/appnext/base/a/c/e$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v1, Lcom/appnext/base/a/c/e$a;->LessThan:Lcom/appnext/base/a/c/e$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, p0, Lcom/appnext/base/a/c/d;->eg:Ljava/lang/String;

    const-string v2, "t"

    const-string v3, "cdd"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-super {p0, v1, v2, v3, v0}, Lcom/appnext/base/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public final b(Lcom/appnext/base/a/b/b;)J
    .registers 4

    .line 44
    invoke-virtual {p1}, Lcom/appnext/base/a/b/b;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appnext/base/a/c/d;->u(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/appnext/base/a/c/d;->eg:Ljava/lang/String;

    invoke-static {p1}, Lcom/appnext/base/a/c/d;->c(Lcom/appnext/base/a/b/b;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/appnext/base/a/c/e;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final synthetic b(Landroid/database/Cursor;)Lcom/appnext/base/a/b/d;
    .registers 9

    const-string v0, "pk"

    .line 3123
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "t"

    .line 3124
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "cd"

    .line 3125
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "cdd"

    .line 3126
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    mul-long v0, v0, v5

    .line 4012
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 4013
    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4014
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    const-string v0, "cdt"

    .line 3128
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3129
    new-instance p1, Lcom/appnext/base/a/b/b;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/appnext/base/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Ljava/lang/String;J)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 83
    sget-object v0, Lcom/appnext/base/a/c/e$a;->Equals:Lcom/appnext/base/a/c/e$a;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/appnext/base/a/c/e$a;->GreaterThan:Lcom/appnext/base/a/c/e$a;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, p0, Lcom/appnext/base/a/c/d;->eg:Ljava/lang/String;

    const-string v0, "t"

    const-string v2, "cdd"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    const/4 v4, 0x0

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lcom/appnext/base/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final delete()V
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/appnext/base/a/c/d;->eg:Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/appnext/base/a/c/e;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .registers 7

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    sget-object v1, Lcom/appnext/base/a/c/e$a;->Equals:Lcom/appnext/base/a/c/e$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v1, p0, Lcom/appnext/base/a/c/d;->eg:Ljava/lang/String;

    const-string v2, "t"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-super {p0, v1, v2, v3, v0}, Lcom/appnext/base/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I

    return-void
.end method

.method public final v(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 71
    sget-object v0, Lcom/appnext/base/a/c/e$a;->Equals:Lcom/appnext/base/a/c/e$a;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, p0, Lcom/appnext/base/a/c/d;->eg:Ljava/lang/String;

    const-string v0, "t"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lcom/appnext/base/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final w(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 77
    sget-object v0, Lcom/appnext/base/a/c/e$a;->Equals:Lcom/appnext/base/a/c/e$a;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/appnext/base/a/c/d;->eg:Ljava/lang/String;

    const-string v0, "pk"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lcom/appnext/base/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final x(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 90
    sget-object v0, Lcom/appnext/base/a/c/e$a;->Equals:Lcom/appnext/base/a/c/e$a;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lcom/appnext/base/a/c/d;->eg:Ljava/lang/String;

    const-string v0, "t"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    .line 1260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cdd"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " DESC"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    .line 91
    invoke-super/range {v0 .. v5}, Lcom/appnext/base/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 92
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_4e

    .line 96
    :cond_39
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 98
    :goto_40
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 99
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 100
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_40

    :cond_4d
    return-object p1

    :cond_4e
    :goto_4e
    const/4 p1, 0x0

    return-object p1
.end method
