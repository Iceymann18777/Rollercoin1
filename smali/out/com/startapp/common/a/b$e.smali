.class Lcom/startapp/common/a/b$e;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/common/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field private static final a:Lcom/startapp/common/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/startapp/common/a/b;

    invoke-direct {v0}, Lcom/startapp/common/a/b;-><init>()V

    sput-object v0, Lcom/startapp/common/a/b$e;->a:Lcom/startapp/common/a/b;

    return-void
.end method

.method static synthetic a()Lcom/startapp/common/a/b;
    .registers 1

    .line 33
    sget-object v0, Lcom/startapp/common/a/b$e;->a:Lcom/startapp/common/a/b;

    return-object v0
.end method
