.class public final Lcom/yandex/metrica/impl/ob/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/bm$b;,
        Lcom/yandex/metrica/impl/ob/bm$a;,
        Lcom/yandex/metrica/impl/ob/bm$f;,
        Lcom/yandex/metrica/impl/ob/bm$e;,
        Lcom/yandex/metrica/impl/ob/bm$d;,
        Lcom/yandex/metrica/impl/ob/bm$c;,
        Lcom/yandex/metrica/impl/ob/bm$s;,
        Lcom/yandex/metrica/impl/ob/bm$r;,
        Lcom/yandex/metrica/impl/ob/bm$q;,
        Lcom/yandex/metrica/impl/ob/bm$p;,
        Lcom/yandex/metrica/impl/ob/bm$o;,
        Lcom/yandex/metrica/impl/ob/bm$k;,
        Lcom/yandex/metrica/impl/ob/bm$j;,
        Lcom/yandex/metrica/impl/ob/bm$i;,
        Lcom/yandex/metrica/impl/ob/bm$h;,
        Lcom/yandex/metrica/impl/ob/bm$g;,
        Lcom/yandex/metrica/impl/ob/bm$n;,
        Lcom/yandex/metrica/impl/ob/bm$m;,
        Lcom/yandex/metrica/impl/ob/bm$u;,
        Lcom/yandex/metrica/impl/ob/bm$t;,
        Lcom/yandex/metrica/impl/ob/bm$l;,
        Lcom/yandex/metrica/impl/ob/bm$v;,
        Lcom/yandex/metrica/impl/ob/bm$aa;,
        Lcom/yandex/metrica/impl/ob/bm$w;,
        Lcom/yandex/metrica/impl/ob/bm$x;,
        Lcom/yandex/metrica/impl/ob/bm$z;,
        Lcom/yandex/metrica/impl/ob/bm$y;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Boolean;

.field public static final b:I

.field static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/ob/bm$l;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/ob/bm$l;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x0

    .line 50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/yandex/metrica/impl/ob/bm;->a:Ljava/lang/Boolean;

    .line 53
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryApiLevel()I

    move-result v1

    sput v1, Lcom/yandex/metrica/impl/ob/bm;->b:I

    .line 473
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 474
    sput-object v1, Lcom/yandex/metrica/impl/ob/bm;->c:Landroid/util/SparseArray;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$t;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/bm$t;-><init>(B)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm;->c:Landroid/util/SparseArray;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$u;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/bm$u;-><init>(B)V

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm;->c:Landroid/util/SparseArray;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$m;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/bm$m;-><init>(B)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm;->c:Landroid/util/SparseArray;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$n;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/bm$n;-><init>(B)V

    const/16 v3, 0x1d

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm;->c:Landroid/util/SparseArray;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$o;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/bm$o;-><init>(B)V

    const/16 v4, 0x25

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm;->c:Landroid/util/SparseArray;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$p;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/bm$p;-><init>(B)V

    const/16 v4, 0x27

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm;->c:Landroid/util/SparseArray;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$q;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/bm$q;-><init>(B)V

    const/16 v4, 0x2d

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm;->c:Landroid/util/SparseArray;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$r;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/bm$r;-><init>(B)V

    const/16 v4, 0x2f

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm;->c:Landroid/util/SparseArray;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$s;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/bm$s;-><init>(B)V

    const/16 v5, 0x32

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 485
    sput-object v1, Lcom/yandex/metrica/impl/ob/bm;->d:Landroid/util/SparseArray;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$g;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/bm$g;-><init>(B)V

    const/16 v6, 0xc

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm;->d:Landroid/util/SparseArray;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$h;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/bm$h;-><init>(B)V

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm;->d:Landroid/util/SparseArray;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$i;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/bm$i;-><init>(B)V

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm;->d:Landroid/util/SparseArray;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$j;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/bm$j;-><init>(B)V

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm;->d:Landroid/util/SparseArray;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$k;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/bm$k;-><init>(B)V

    const/16 v0, 0x37

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 492
    sput-object v0, Lcom/yandex/metrica/impl/ob/bm;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bm$y;->a:[Ljava/lang/String;

    const-string v2, "reports"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/yandex/metrica/impl/ob/bm;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bm$z;->a:[Ljava/lang/String;

    const-string v2, "sessions"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/yandex/metrica/impl/ob/bm;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bm$x;->a:[Ljava/lang/String;

    const-string v2, "preferences"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/bs;
    .registers 6

    .line 498
    new-instance v0, Lcom/yandex/metrica/impl/ob/bs;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bm$c;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/bm$c;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$d;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/bm$d;-><init>()V

    sget-object v3, Lcom/yandex/metrica/impl/ob/bm;->c:Landroid/util/SparseArray;

    new-instance v4, Lcom/yandex/metrica/impl/ob/bu;

    sget-object v5, Lcom/yandex/metrica/impl/ob/bm;->e:Ljava/util/HashMap;

    invoke-direct {v4, v5}, Lcom/yandex/metrica/impl/ob/bu;-><init>(Ljava/util/HashMap;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/bs;-><init>(Lcom/yandex/metrica/impl/ob/bm$l;Lcom/yandex/metrica/impl/ob/bm$l;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/bt;)V

    return-object v0
.end method

.method public static b()Lcom/yandex/metrica/impl/ob/bs;
    .registers 6

    .line 508
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 509
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm$x;->a:[Ljava/lang/String;

    const-string v2, "preferences"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm$aa;->a:[Ljava/lang/String;

    const-string v2, "startup"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm$w;->a:[Ljava/lang/String;

    const-string v2, "permissions"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    new-instance v1, Lcom/yandex/metrica/impl/ob/bs;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$e;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/bm$e;-><init>()V

    new-instance v3, Lcom/yandex/metrica/impl/ob/bm$f;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/bm$f;-><init>()V

    sget-object v4, Lcom/yandex/metrica/impl/ob/bm;->d:Landroid/util/SparseArray;

    new-instance v5, Lcom/yandex/metrica/impl/ob/bu;

    invoke-direct {v5, v0}, Lcom/yandex/metrica/impl/ob/bu;-><init>(Ljava/util/HashMap;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/bs;-><init>(Lcom/yandex/metrica/impl/ob/bm$l;Lcom/yandex/metrica/impl/ob/bm$l;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/bt;)V

    return-object v1
.end method

.method public static c()Lcom/yandex/metrica/impl/ob/bs;
    .registers 6

    .line 523
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 524
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm$x;->a:[Ljava/lang/String;

    const-string v2, "preferences"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    new-instance v1, Lcom/yandex/metrica/impl/ob/bs;

    new-instance v2, Lcom/yandex/metrica/impl/ob/bm$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/bm$a;-><init>(B)V

    new-instance v4, Lcom/yandex/metrica/impl/ob/bm$b;

    invoke-direct {v4, v3}, Lcom/yandex/metrica/impl/ob/bm$b;-><init>(B)V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/bu;

    invoke-direct {v5, v0}, Lcom/yandex/metrica/impl/ob/bu;-><init>(Ljava/util/HashMap;)V

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/yandex/metrica/impl/ob/bs;-><init>(Lcom/yandex/metrica/impl/ob/bm$l;Lcom/yandex/metrica/impl/ob/bm$l;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/bt;)V

    return-object v1
.end method
