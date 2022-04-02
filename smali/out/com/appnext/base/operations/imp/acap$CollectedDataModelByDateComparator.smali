.class Lcom/appnext/base/operations/imp/acap$CollectedDataModelByDateComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/base/operations/imp/acap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectedDataModelByDateComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/appnext/base/a/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ex:Lcom/appnext/base/operations/imp/acap;


# direct methods
.method private constructor <init>(Lcom/appnext/base/operations/imp/acap;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/appnext/base/operations/imp/acap$CollectedDataModelByDateComparator;->ex:Lcom/appnext/base/operations/imp/acap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appnext/base/operations/imp/acap;Lcom/appnext/base/operations/imp/acap$1;)V
    .registers 3

    .line 117
    invoke-direct {p0, p1}, Lcom/appnext/base/operations/imp/acap$CollectedDataModelByDateComparator;-><init>(Lcom/appnext/base/operations/imp/acap;)V

    return-void
.end method

.method public static a(Lcom/appnext/base/a/b/b;Lcom/appnext/base/a/b/b;)I
    .registers 5

    .line 120
    invoke-virtual {p0}, Lcom/appnext/base/a/b/b;->aj()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/appnext/base/a/b/b;->aj()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    .line 117
    check-cast p1, Lcom/appnext/base/a/b/b;

    check-cast p2, Lcom/appnext/base/a/b/b;

    .line 1120
    invoke-virtual {p1}, Lcom/appnext/base/a/b/b;->aj()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/appnext/base/a/b/b;->aj()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-lez v2, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method
