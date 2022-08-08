---
layout: post
title: Role of Nonlinearlity in the Origin of Life
published: true
categories: blogs
---

*This article was originally written as the final report for PHYS 478: Nonlinear Dynamics and Chaos. For the purpose of publishing it here, I slightly modified it in terms of format as well as content.*

In this post, I am going to address the problem of the origin of homochirality in life, i.e., given that the homochirality is not natural in the sense that a reaction always produces racemic mixture, why is it the case that life only uses homochiral molecules? Life couldn’t emerge if it was not the case. So, how come homochirality emerges in prebiotic molecules that eventually gave origin to life? We are going to find (partial) answer to this question in this post. Before beginning, let's get introduced to some of the terms and concepts that we will use here.

From the freshman level organic chemistry, we know that there is a classification of isomers called enantiomers. Molecule A and B are called enantiomers of each other if they are non-superposable mirror images of each-other. Chirality is the fundamental feature that causes a pair of molecules to be enantiomer. If the mirror image of a molecule is identical to the original molecule, then we call the molecule achiral. On the other hand, if the mirror image of a molecule is not identical to the original molecule, then we say that both molecules are chiral molecules. We denote the two chiral molecules with D-molecule and L-molecule in order to distinguish them (there are other conventions but I will stick with it). It’s important to note that both of the molecules have the identical chemical and physical properties. They only differ optically in the sense that they have different direction of rotation of the plane of polarized light. 

If a sample of solution contains equal number of D-molecules and L-molecules, then we say that we have a racemic mixture. On the other hand, if a sample contains only molecules of one chirality (either D-molecule or L-molecule but not both), we call this sample a homochiral sample. If, in a reaction, chiral molecule can produce, then they produce in a racemic mixture provided that no special catalyst is used. Last but not least we say that a reaction is autocatalytic when one of the products of the reaction acts as a catalyst of that reaction. 

There are two features that is found universally (with very rare exception) in all of the life on earth: the homochirality of amino acids and sugars, and the universality of the genetic code. All of the life, almost exclusively use L-amino acids and D-sugars. It turns out that the homochirality of amino acid is very important because it helps in protein folding-unfolding which is essential to life. 

Now, the big debate is that how come homochirality emerged in life! Naturally, it should have a racemic mixture of molecules but in reality we find homochiral molecules. There are three main camps in this debate. The first camp claims that homochirality emerged before the origin of life and it was a prerequisite for life (they offer several mechanisms of how homochirality emerged from achiral molecules), the second camp claims that homochirality is a consequence of life, and lastly the third camp claims that homochirality is a result of physical asymmetry, i.e.,asymmetries in the physical laws give rise to the homochirality. Most people (including Jafarpour et. al.) rejects the third camp because the underlying physical asymmetry can only give rise of an excess of a chiral molecule. However, homochirality refers to the 100% dominance of one chirality over another. Also, there is no good reasons to believe that homochirality is a consequence of life. That's why we think there must be a symmetry breaking mechanism.

Charles Franck suggested a mechanism that says homochirality is a consequence of chemical autocatalysis. Frank’s mechanism is based on the concept of non-linearity.  He introduces an inhibition reaction coupled with an autocatalytic reaction that can give emergence to homochirality. Before proceeding, let me discuss what we mean by a mechanism of the origin of homochirality. If a system has several (at least two) equally likely outcomes but exhibits only certain (or one) outcome(s), then the system is asymmetric with respect to those outcomes. For example, achiral molecules produce a racemic mixture of chiral molecules. However, we see only homochiral molecules in life. So, we say that somewhere sometimes their symmetry broke and the system (here life) chose one outcome (here homochirality). This is called symmetry-breaking. This symmetry can break spontaneously, or due to fluctuations, or amplification. Frank’s model shows that the symmetry of D and L molecules broke because of amplification i.e. an autocatalysis reaction occurred that was coupled with an inhibition reaction.

Frank proposed three chemical reactions: (reaction rate inside the parenthesis)

(1) autocatalysis of D-molecule: $ A + D → 2D $    $(k<sub>a</sub>)$

(2) autocatalysis of L-molecule: $ A + L → 2L $    $(k_a)$

(3) chiral inhibition (mutual antagonism of D-molecule and L-molecule): $ D + L → 0  $  (k<sub>i</sub>)

Now, the law of mass action says that the rate of an equation is directly proportional to the product of the concentrations of the reactants. So, for the following reaction with reaction rate k, aA + bB = cC + dD, we can say that at equilibrium k = ([A]a[B]b)/([C]c[D]d), where [X] refers to the concentration of molecule X. Anyways, we only need this law in an intuitive manner. So, let’s see the time evolution of the concentrations of D and L in this system. Let [D] and [L] be instantaneous concentrations of D-molecule and L-molecule, respectively, at some time t. Then, mass-action law says, at time t, [D] is increasing at a rate ka*[A]*[D] due to reaction (1) and is decreasing at a rate ki*[L]*[D] due to reaction (2). So, 
ⅆ[D]/ⅆt=K_a [A][D]-K_i [L][D]
Similarly, we will have,
ⅆ[L]/ⅆt=K_a [A][L]-K_i [L][D]
Doing a linearization, the corresponding matrix equation is:
(█(d ̇@l ̇ ))=(■(k_a A&-k_i d@-k_i l&k_a A))(█(d@l))
where, for the simplicity, d = [D], l = [L] and we use dot-notation for the time derivative. In the matrix, the trace and the determinant are:
τ=2k_a A      and      Δ=k_a^2 A^2-k_i^2 lⅆ
So, there will be a saddle point if Δ<0 or ld>((k_a A)/k_i )^2 . Also, since ka, ki and all the concentrations are positive number (non-trivial case), τ > 0 and τ^2-4Δ=4k_i^2 ld>0. Therefore, for ld<((k_a A)/k_i )^2 there exists an unstable node for non-zero concentration. This is seen in figure 1, where we plotted the phase portrait of [D] and [L] , x and y in the figure respectively. 
 
Figure 1: Phase portrait of Frank's original proposal. Two equilibrium points can be seen, an unstable node at (0,0) and a saddle point at (1.4,1.4) [Generated using pplane8.m]
From now on in the phase portrait x and y will denote [D] and [L], respectively.
Frank’s Modified Model: Notice that in reaction (3), we used a mutual antagonistic reaction and keep [A] as constant in the whole system. This doesn’t conserve the total number of molecules. The authors proposed a modified version where we changed the reaction (3) to:
(3*) chiral inhibition: D + L → 2A    (ki)
So, [A] becomes a variable. From the mass-action law we have:
ⅆ[A]/ⅆt=〖2K〗_i [D][L]-K_a [A][D]-K_a [A][L]
Now, let N:= [A] + [D] + [L], which should be a constant. Now, to plot the phase portrait of this modified system with [A] = N – [D] – [L] instead of [A] = a constant.  
Figure 2: Phase portrait of the modified Frank's model where we replaced D+L→0 to D+L→2A. The green line indicates stable orbits.
Notice that in figure 2, two new equilibrium points have emerged: at ([D], [L]) = (N, 0) and (0, N). This is essentially FIG. 2(a) in the paper. However, I couldn’t discard the area of the phase portrait where [D] + [L] + [A] exceeds N. Anything above the straight line, y=-x+3 as well as any negative concentrations, do not make sense. So, we should discard it. If we define a chiral order parameter, ω=([D]-[L])/([D]+[L] ) , then in terms of ω we can say the three non-trivial equilibrium points as ω=0 (the unstable saddle point near the center which is the racemic state), at ω=1 i.e. the stable fixed point at ([D], [L]) = (N, 0), and at  ω = -1  i.e. the stable fixed point at ([D], [L]) = (0, N). While Frank’s original model gives us homochirality but the indefinite growth of the homochiral molecule, this modified model provides us steady states. 
But is Chiral Inhibition Necessary or Sufficient? We have seen that when an inhibition reaction occurred along with an autocatalytic reaction, homochirality emerges. However, evidence suggests that inhibition does not necessarily occur with autocatalytic reaction. It warrants the question that whether it is possible to have homochirality without the inhibition reaction. Let’s see what happens if we replace the inhibition reaction with decay reaction. Reaction (1) and (2) are the same. We will replace reaction (3) (or (3*) in the modified model) with a set of linear decay reaction (4) and (5):
(4) D → A     (kd) 
(5) L → A     (kd) 
So, the system is 
ⅆ[D]/ⅆt=K_a [A][D]-K_d [D]   ,          ⅆ[L]/ⅆt=K_a [A][L]-K_d [L]
ⅆ[A]/ⅆt=K_d [D]+K_d [L]-K_a [A][D]-K_a [A][L]
Holding the same assumption as before, the phase portrait is drawn in figure 3.
  
Figure 3: Frank's model when the chiral inhibition reaction is replaced by two linear decay reactions. Here the trivial equilibrium point (0,0) has not been highlighted.
Surprisingly, we see that the homochirality vanishes and instead we end up with a bunch of fixed points along the nullclines. Similar to figure 2, ignore any vector field above the black straight line. This shows that if we replace the non-linear inhibition reaction with two linear decay reaction, then we end up with some constant concentration of D and L-molecule.
But what happens if we make the linear decay reaction reversible? Making a reaction reversible is the same thing as considering the products as the reactants and vice-versa. So, along with reaction (4) and (5), we will have the reverse of them:
(6) A → D     (kd) 
(7) A → L     (kd)
So, the system is 
ⅆ[D]/ⅆt=K_a [A][D]-K_d [D]+K_d [A]   ,          ⅆ[L]/ⅆt=K_a [A][L]-K_d [L]+K_d [A]
ⅆ[A]/ⅆt=K_d [D]+K_d [L]-K_a [A][D]-K_a [A][L]-2K_d [A]
Figure 4 shows the phase portrait for this reversible-linear-decay variant of Frank’s model.
 
Figure 4: this shows that in case the linear decay reactions were reversible, the racemic state would have been the global attractor.
This figure is even more surprising in the sense that when the decay reactions were linear and irreversible, we ended up having infinitely many possible steady states where [D] and [L] can take any values. However, making the linear decay reactions reversible, we lost all the fixed points except one, which is the racemic state (because [D] = [L]). But notice also that now that state became a global attractor. You can start from anywhere (even from a homochiral state) in the system but you will quickly end up with the racemic state. All these observations suggest that nonlinear terms due to inhibition reaction should be taken to obtain a homochiral state. However, the authors suggest that the system can still approach a homochiral state without an inhibition reaction scheme if we take the underlying noise from the autocatalytic reaction into account i.e. nonlinearity is not necessary for homochirality, instead a stochastic treatment of the autocatalytic reactions can give rise to a homochiral state.
What is Stochastic Treatment: What I understood about the stochastic process is that it comes in contrast with the deterministic process. For example, let’s say a particle changed its position from some state x to another state y. Now if we are also given some trajectory of that particle with certainty (whatever the trajectory is – be it a straight line or a cycloidal path), then this is called the deterministic treatment. But if the particle changes its position like a Brownian motion, then the treatment should be stochastic. 
In this paper, stochastic chemical reaction refers to the stochastic version of the mass-action law. So, instead of writing an equation of the rate of change of the concentrations, we can write the probability of the system having certain concentrations. This is given by the master equation:
∂P(x ⃗,t)/∂t=V∑_y ⃗▒[T(├ x ⃗ ┤| y ⃗ )P(y ⃗,t)-T(y ⃗|x ⃗ )p(x ⃗,t)] 
Which seems intuitive given the definition of T(├ x ⃗ ┤| y ⃗ ) and P(y ⃗,t). P(y ⃗,t) is the probability of the system being at a state y at time t. And T(├ x ⃗ ┤| y ⃗ ) is the probability of the system transiting from a state x to a state y per unit time per unit volume. However, I couldn’t follow the derivation of this exact master equation. I am not familiar with this type of mathematics. But as I try to follow, I couldn’t derive eq(15) from eq(14), for instance. They seem to use T(├ x ⃗ ┤| y ⃗ )=T(y ⃗|x ⃗ ) for which I do not find any rationale. 
How come Stochastic Treatment Give Rise to Homochirality: After applying the stochastic treatment, they successfully showed (which I do not understood mathematically) that intrinsic noise of the autocatalytic reactions is the maximum at the racemic state but zero (minimum) at both of the homochiral states. So, they investigated the time-evolution of the chiral order parameter ω and noticed that at the racemic state due to the maximum noise ω deviates, so does the system. However, after sufficient time when ω reaches one of the homochiral states, it doesn’t deviate anymore cause the noise at the homochiral states is zero. 
They also explained why the noise at the homochiral state is zero. Since at the homochiral state, only one of the two chiral molecules exists. So, all the other reaction stops except the autocatalysis of the that chiral molecule whose homochiral state it is. Thus, homochirality emerges. What I don’t understand, probably I am missing something because of not understanding the mathematical part, is that why in the homochiral state all the other reaction rates become zero. Suppose the system is in a D-molecule homochiral state. So, there is no L-molecule. So, I understand that reaction (2) and (5) won’t occur. However, there exist achiral D-molecule which can produce chiral L-molecule from reaction (7).  
Lastly, I couldn’t do the Gillespie simulation. I only plotted the analytical result they achieved for the rate of change of the probability density function of the chiral order parameter, which has the solution
 P_s (w)=Γ(α+1/2)/(√π Γ(α) ) (1-ω^2 )^((k_n V)/k_a -1)
Stationary Distribution Plot:  
Figure 5: This is the stationary distribution plot for different values of α 
MATLAB CODE: 
w = -1:0.001:+1;
a = [0.01;0.1;1;10;100];
Y = (gamma(a + 0.5)./(sqrt(pi).*gamma(a))).*(1-w.^2).^(a-1);
figure
plot(w,Y)
legend(compose('a = %.1f',a), 'Location','best')
ylim([0 6])
xlabel("w")
ylabel("P(w)")

