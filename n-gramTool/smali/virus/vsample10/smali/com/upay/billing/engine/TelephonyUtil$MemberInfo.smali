.class Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;
.super Ljava/lang/Object;


# instance fields
.field member:Ljava/lang/reflect/Member;

.field numArgs:I

.field signature:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/reflect/Member;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;->signature:Ljava/lang/String;

    iput p2, p0, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;->numArgs:I

    iput-object p3, p0, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;->member:Ljava/lang/reflect/Member;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;->member:Ljava/lang/reflect/Member;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
