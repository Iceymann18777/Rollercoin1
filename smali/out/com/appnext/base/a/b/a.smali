.class public final Lcom/appnext/base/a/b/a;
.super Lcom/appnext/base/a/b/d;
.source "SourceFile"


# instance fields
.field private dF:Ljava/lang/Integer;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Lcom/appnext/base/a/b/d;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/appnext/base/a/b/a;->packageName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/appnext/base/a/b/a;->dF:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final ag()Ljava/lang/Integer;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/appnext/base/a/b/a;->dF:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/appnext/base/a/b/a;->packageName:Ljava/lang/String;

    return-object v0
.end method
