.class public Lcom/yandex/metrica/impl/e;
.super Lcom/yandex/metrica/impl/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/e$a;
    }
.end annotation


# instance fields
.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/yandex/metrica/impl/e$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/yandex/metrica/impl/utils/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/yandex/metrica/impl/h;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/e;->f:Ljava/util/HashMap;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/utils/f;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/f;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/e;->g:Lcom/yandex/metrica/impl/utils/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const-string v0, ""

    .line 40
    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    .line 47
    invoke-direct {p0}, Lcom/yandex/metrica/impl/h;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/e;->f:Ljava/util/HashMap;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/utils/f;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/f;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/e;->g:Lcom/yandex/metrica/impl/utils/f;

    .line 48
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/e;->b:Ljava/lang/String;

    .line 49
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/e;->a:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcom/yandex/metrica/impl/e;->c:I

    .line 51
    iput p4, p0, Lcom/yandex/metrica/impl/e;->d:I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/e$a;)V
    .registers 5

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->g:Lcom/yandex/metrica/impl/utils/f;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->f:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    invoke-static {p2}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;)[B

    move-result-object p2

    array-length p2, p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 58
    :cond_1d
    iget-object p1, p0, Lcom/yandex/metrica/impl/e;->f:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_22
    const/4 p1, 0x0

    .line 1064
    iput p1, p0, Lcom/yandex/metrica/impl/e;->e:I

    .line 1065
    iget-object p1, p0, Lcom/yandex/metrica/impl/e;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 1066
    iget p3, p0, Lcom/yandex/metrica/impl/e;->e:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p3, p2

    iput p3, p0, Lcom/yandex/metrica/impl/e;->e:I

    goto :goto_2f

    :cond_45
    return-void
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->g:Lcom/yandex/metrica/impl/utils/f;

    const/16 v1, 0x3e8

    const-string v2, "event name"

    invoke-virtual {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/utils/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/yandex/metrica/impl/e$a;->a:Lcom/yandex/metrica/impl/e$a;

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/e$a;)V

    return-object v0
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->g:Lcom/yandex/metrica/impl/utils/f;

    const v1, 0x3c000

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/utils/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/yandex/metrica/impl/e$a;->b:Lcom/yandex/metrica/impl/e$a;

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/e$a;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .registers 5

    .line 83
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->g:Lcom/yandex/metrica/impl/utils/f;

    const/16 v1, 0x2710

    const-string v2, "UserInfo"

    invoke-virtual {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/utils/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/yandex/metrica/impl/e$a;->c:Lcom/yandex/metrica/impl/e$a;

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/e$a;)V

    .line 85
    invoke-super {p0, v0}, Lcom/yandex/metrica/impl/h;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .registers 2

    .line 90
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/h;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .registers 2

    .line 95
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/h;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    return-object p1
.end method
