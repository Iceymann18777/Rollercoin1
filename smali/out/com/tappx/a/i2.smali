.class Lcom/tappx/a/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/i2$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/v;


# direct methods
.method constructor <init>(Lcom/tappx/a/v;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/i2;->a:Lcom/tappx/a/v;

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/p2;JLcom/tappx/a/i2$c;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/tappx/a/i2;->a:Lcom/tappx/a/v;

    new-instance v4, Lcom/tappx/a/i2$a;

    invoke-direct {v4, p0, p4}, Lcom/tappx/a/i2$a;-><init>(Lcom/tappx/a/i2;Lcom/tappx/a/i2$c;)V

    new-instance v5, Lcom/tappx/a/i2$b;

    invoke-direct {v5, p0, p4}, Lcom/tappx/a/i2$b;-><init>(Lcom/tappx/a/i2;Lcom/tappx/a/i2$c;)V

    move-wide v1, p2

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/tappx/a/v;->a(JLcom/tappx/a/p2;Lcom/tappx/a/m;Lcom/tappx/a/h;)Lcom/tappx/a/v$b;

    return-void
.end method
