.class public Lcom/tappx/a/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/x;


# direct methods
.method public constructor <init>(Lcom/tappx/a/x;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/s$a;->a:Lcom/tappx/a/x;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)Lcom/tappx/a/s;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tappx/a/f0$b<",
            "Lcom/tappx/a/y1;",
            ">;",
            "Lcom/tappx/a/f0$a;",
            ")",
            "Lcom/tappx/a/s;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/tappx/a/s;

    iget-object v1, p0, Lcom/tappx/a/s$a;->a:Lcom/tappx/a/x;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tappx/a/s;-><init>(Lcom/tappx/a/x;Ljava/lang/String;Ljava/lang/String;Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)V

    return-object v6
.end method
